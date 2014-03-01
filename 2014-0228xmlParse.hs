<haskell>
{-# LANGUAGE Arrows, NoMonomorphismRestriction #-}
import Text.XML.HXT.Core

-- This example demonstrates a more complex XML parse,
-- involving multiple levels, attributes, inner lists,
-- and dealing with optional data.

-- Example data drawn from:
-- http://www.ibiblio.org/xml/books/bible/examples/05/5-1.xml
-- save as: simple2.xml

data Team = Team 
  { teamName, division, league, city :: String,
    players :: [Player] }
  deriving (Show, Eq)

data Player = Player
  { firstName, lastName, position :: String,
    
    atBats, hits :: Maybe Int,
    era          :: Maybe Float }
  deriving (Show, Eq)

parseXML file = readDocument [ withValidate no
                             , withRemoveWS yes  -- throw away formating WS
                             ] file

atTag tag = deep (isElem >>> hasName tag)

-- Incremental development of the getTeams function:

-- First, list the teams.
-- Try it out in GHCi: 
-- Main> runX (parseXML "simple2.xml" >>> getTeams1)

getTeams1 = atTag "LEAGUE" >>>
  proc l -> do
    leagName <- getAttrValue "NAME" -< l
    divi     <- atTag "DIVISION"    -< l
    diviName <- getAttrValue "NAME" -< divi
    team     <- atTag "TEAM"        -< divi
    teamName <- getAttrValue "NAME" -< team
    returnA -< (leagName, diviName, teamName)

-- getTeams2 also lists the players.
-- But there is a catch; now teams without players
-- are being left out.  (This behavior is familiar to
-- users of the List monad)

getTeams2 = atTag "LEAGUE" >>>
  proc l -> do
    leagName <- getAttrValue "NAME"       -< l
    divi     <- atTag "DIVISION"          -< l
    diviName <- getAttrValue "NAME"       -< divi
    team     <- atTag "TEAM"              -< divi
    teamName <- getAttrValue "NAME"       -< team
    player   <- atTag "PLAYER"            -< team
    fName    <- getAttrValue "GIVEN_NAME" -< player
    lName    <- getAttrValue "SURNAME"    -< player
    returnA -< (leagName, diviName, teamName, fName, lName)

-- What we really want is to capture the players in a list
-- at this level; and if there are no players then the
-- empty list will suffice.  listA is used for this purpose.

getPlayer1 = atTag "PLAYER" >>>
  proc p -> do
    fName    <- getAttrValue "GIVEN_NAME" -< p
    lName    <- getAttrValue "SURNAME"    -< p
    returnA -< (fName, lName)
    
getTeams3 = atTag "LEAGUE" >>>
  proc l -> do
    leagName <- getAttrValue "NAME" -< l
    divi     <- atTag "DIVISION"    -< l
    diviName <- getAttrValue "NAME" -< divi
    team     <- atTag "TEAM"        -< divi
    teamName <- getAttrValue "NAME" -< team
    players  <- listA getPlayer1    -< team
    returnA -< (leagName, diviName, teamName, players)

-- Try capturing some statistics about the players

significant = not . all (`elem` " \n\r\t")

-- Use our definition of "significant" strings to
-- capture the value; or else nothing.

getStat attr = 
  (getAttrValue attr >>> isA significant >>> arr Just)
    `orElse` (constA Nothing)

getPlayer2 = atTag "PLAYER" >>>
  proc p -> do
    fName    <- getAttrValue "GIVEN_NAME" -< p
    lName    <- getAttrValue "SURNAME"    -< p
    position <- getAttrValue "POSITION"   -< p
    hits     <- getStat "HITS"            -< p
    atBats   <- getStat "AT_BATS"         -< p
    era      <- getStat "ERA"             -< p
    returnA -< Player
      { firstName = fName,
        lastName  = lName,
        position  = position,
        hits      = read `fmap` hits,
        atBats    = read `fmap` atBats,
        era       = read `fmap` era }
 
getTeams4 = atTag "LEAGUE" >>>
  proc l -> do
    leagName <- getAttrValue "NAME" -< l
    divi     <- atTag "DIVISION"    -< l
    diviName <- getAttrValue "NAME" -< divi
    team     <- atTag "TEAM"        -< divi
    teamName <- getAttrValue "NAME" -< team
    city     <- getAttrValue "CITY" -< team
    players  <- listA getPlayer2    -< team
    returnA -< Team
      { league   = leagName,
        division = diviName,
        teamName = teamName,
        city     = city,
        players  = players }

-- Our final choices

getPlayer = getPlayer2
getTeams  = getTeams4

main = do
  teams <- runX (parseXML "simple2.xml" >>> getTeams)
  print teams
</haskell>

=== The Data ===

Included here for convenience.

<pre>
<SEASON YEAR="1998">
<LEAGUE NAME="National League">
  <DIVISION NAME="East">

  <TEAM CITY="Atlanta" NAME="Braves">
<PLAYER GIVEN_NAME="Marty" SURNAME="Malloy" POSITION="Second Base" GAMES="11" GAMES_STARTED="8" AT_BATS="28" RUNS="3" HITS="5" DOUBLES="1" TRIPLES="0" HOME_RUNS="1" RBI="1" STEALS="0" CAUGHT_STEALING="0" SACRIFICE_HITS="0" SACRIFICE_FLIES="0" ERRORS="0" WALKS="2" STRUCK_OUT="2" HIT_BY_PITCH="0">
        </PLAYER>
<PLAYER GIVEN_NAME="Ozzie" SURNAME="Guillen" POSITION="Shortstop" GAMES="83" GAMES_STARTED="59" AT_BATS="264" RUNS="35" HITS="73" DOUBLES="15" TRIPLES="1" HOME_RUNS="1" RBI="22" STEALS="1" CAUGHT_STEALING="4" SACRIFICE_HITS="4" SACRIFICE_FLIES="2" ERRORS="6" WALKS="24" STRUCK_OUT="25" HIT_BY_PITCH="1">
        </PLAYER>
<PLAYER GIVEN_NAME="Danny" SURNAME="Bautista" POSITION="Outfield" GAMES="82" GAMES_STARTED="27" AT_BATS="144" RUNS="17" HITS="36" DOUBLES="11" TRIPLES="0" HOME_RUNS="3" RBI="17" STEALS="1" CAUGHT_STEALING="0" SACRIFICE_HITS="3" SACRIFICE_FLIES="2" ERRORS="2" WALKS="7" STRUCK_OUT="21" HIT_BY_PITCH="0">
        </PLAYER>
<PLAYER GIVEN_NAME="Gerald" SURNAME="Williams" POSITION="Outfield" GAMES="129" GAMES_STARTED="51" AT_BATS="266" RUNS="46" HITS="81" DOUBLES="18" TRIPLES="3" HOME_RUNS="10" RBI="44" STEALS="11" CAUGHT_STEALING="5" SACRIFICE_HITS="2" SACRIFICE_FLIES="1" ERRORS="5" WALKS="17" STRUCK_OUT="48" HIT_BY_PITCH="3">
        </PLAYER>
<PLAYER GIVEN_NAME="Tom" SURNAME="Glavine" POSITION="Starting Pitcher" GAMES="33" GAMES_STARTED="33" WINS="20" LOSSES="6" SAVES="0" COMPLETE_GAMES="4" SHUT_OUTS="3" ERA="2.47" INNINGS="229.1" HOME_RUNS_AGAINST="13" RUNS_AGAINST="67" EARNED_RUNS="63" HIT_BATTER="2" WILD_PITCHES="3" BALK="0" WALKED_BATTER="74" STRUCK_OUT_BATTER="157">
        </PLAYER>
<PLAYER GIVEN_NAME="Javier" SURNAME="Lopez" POSITION="Catcher" GAMES="133" GAMES_STARTED="124" AT_BATS="489" RUNS="73" HITS="139" DOUBLES="21" TRIPLES="1" HOME_RUNS="34" RBI="106" STEALS="5" CAUGHT_STEALING="3" SACRIFICE_HITS="1" SACRIFICE_FLIES="8" ERRORS="5" WALKS="30" STRUCK_OUT="85" HIT_BY_PITCH="6">
        </PLAYER>
<PLAYER GIVEN_NAME="Ryan" SURNAME="Klesko" POSITION="Outfield" GAMES="129" GAMES_STARTED="124" AT_BATS="427" RUNS="69" HITS="117" DOUBLES="29" TRIPLES="1" HOME_RUNS="18" RBI="70" STEALS="5" CAUGHT_STEALING="3" SACRIFICE_HITS="0" SACRIFICE_FLIES="4" ERRORS="2" WALKS="56" STRUCK_OUT="66" HIT_BY_PITCH="3">
        </PLAYER>
<PLAYER GIVEN_NAME="Andres" SURNAME="Galarraga" POSITION="First Base" GAMES="153" GAMES_STARTED="151" AT_BATS="555" RUNS="103" HITS="169" DOUBLES="27" TRIPLES="1" HOME_RUNS="44" RBI="121" STEALS="7" CAUGHT_STEALING="6" SACRIFICE_HITS="0" SACRIFICE_FLIES="5" ERRORS="11" WALKS="63" STRUCK_OUT="146" HIT_BY_PITCH="25">
        </PLAYER>
<PLAYER GIVEN_NAME="Wes" SURNAME="Helms" POSITION="Third Base" GAMES="7" GAMES_STARTED="2" AT_BATS="13" RUNS="2" HITS="4" DOUBLES="1" TRIPLES="0" HOME_RUNS="1" RBI="2" STEALS="0" CAUGHT_STEALING="0" SACRIFICE_HITS="0" SACRIFICE_FLIES="0" ERRORS="1" WALKS="0" STRUCK_OUT="4" HIT_BY_PITCH="0">
        </PLAYER>
</TEAM>
<TEAM CITY="Florida" NAME="Marlins">
      </TEAM>
<TEAM CITY="Montreal" NAME="Expos">
      </TEAM>
<TEAM CITY="New York" NAME="Mets">
      </TEAM>
<TEAM CITY="Philadelphia" NAME="Phillies">
      </TEAM>
</DIVISION>

  <DIVISION NAME="Central">
<TEAM CITY="Chicago" NAME="Cubs">
      </TEAM>
<TEAM CITY="Cincinnati" NAME="Reds">
      </TEAM>
<TEAM CITY="Houston" NAME="Astros">
      </TEAM>
<TEAM CITY="Milwaukee" NAME="Brewers">
      </TEAM>
<TEAM CITY="Pittsburgh" NAME="Pirates">
      </TEAM>
<TEAM CITY="St. Louis" NAME="Cardinals">
      </TEAM>
</DIVISION>

  <DIVISION NAME="West">
<TEAM CITY="Arizona" NAME="Diamondbacks">
      </TEAM>
<TEAM CITY="Colorado" NAME="Rockies">
      </TEAM>
<TEAM CITY="Los Angeles" NAME="Dodgers">
      </TEAM>
<TEAM CITY="San Diego" NAME="Padres">
      </TEAM>
<TEAM CITY="San Francisco" NAME="Giants">
      </TEAM>
</DIVISION>
</LEAGUE>

  <LEAGUE NAME="American League">

  <DIVISION NAME="East">
<TEAM CITY="Baltimore" NAME="Orioles">
      </TEAM>
<TEAM CITY="Boston" NAME="Red Sox">
      </TEAM>
<TEAM CITY="New York" NAME="Yankees">
      </TEAM>
<TEAM CITY="Tampa Bay" NAME="Devil Rays">
      </TEAM>
<TEAM CITY="Toronto" NAME="Blue Jays">
      </TEAM>
</DIVISION>

  <DIVISION NAME="Central">
<TEAM CITY="Chicago" NAME="White Sox">
      </TEAM>
<TEAM CITY="Kansas City" NAME="Royals">
      </TEAM>
<TEAM CITY="Detroit" NAME="Tigers">
      </TEAM>
<TEAM CITY="Cleveland" NAME="Indians">
      </TEAM>
<TEAM CITY="Minnesota" NAME="Twins">
      </TEAM>
</DIVISION>

  <DIVISION NAME="West">
<TEAM CITY="Anaheim" NAME="Angels">
      </TEAM>
<TEAM CITY="Oakland" NAME="Athletics">
      </TEAM>
<TEAM CITY="Seattle" NAME="Mariners">
      </TEAM>
<TEAM CITY="Texas" NAME="Rangers">
      </TEAM>
</DIVISION>
</LEAGUE>
</SEASON>
</pre>

