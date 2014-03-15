

-- front controller pattern -- all requests enter at one location and is then routed to the resource request from there. PHP and ASP allow for more than one entery point. 
-- yesod routing is declarative.   
mkYesod "YesodHello" [parseRoutes| 
/ HomeR GET
|] 

-- "mkYesod" is a Template Haskell function and "parseRoutes" is a Quasi-Quoter 
-- one route called HomeR gets created and listens on "/" a.k.a. root and will answer to GET requests. HomeR is a resource, note the big R; This is a best practice convention.
-- ghci -ddump-splices helloYesod.hs
-- helloYesod.hs:1:1: Splicing declarations
--     mkYesod
--       "YesodHello"
--       [yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.ResourceLeaf
--          (yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Resource
--             "HomeR"
--             []
--             (yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Methods
--                Nothing ["GET"])
--             [])]
--   ======>
--     helloYesod.hs:(7,1)-(8,2)
--     instance ParseRoute YesodHello where
--       parseRoute (pieces0_a6bY, _query_a6c0)
--         = Control.Monad.join (dispatch_a6bZ pieces0_a6bY)
--         where
--             dispatch_a6bZ
--               = Yesod.Routes.Dispatch.toDispatch
--                   [Yesod.Routes.Dispatch.Route
--                      []
--                      False
--                      (\ pieces_a6c1
--                         -> case pieces_a6c1 of {
--                              [] -> do { Just (Just HomeR) }
--                              _ -> error "Invariant violated" })]
--     instance RenderRoute YesodHello where
--       data instance Route YesodHello
--         = HomeR
--         deriving (Show, Eq, Read)
--       renderRoute HomeR = ([], [])
--     instance RouteAttrs YesodHello where
--       routeAttrs (HomeR {})
--         = containers-0.5.0.0:Data.Set.Base.fromList []
--     resourcesYesodHello ::
--       [yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.ResourceTree String]
--     resourcesYesodHello
--       = [yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.ResourceLeaf
--            (yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Resource
--               "HomeR"
--               []
--               (yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Methods
--                  Nothing ["GET"])
--               [])]
--     type Handler = HandlerT YesodHello IO
--     type Widget = WidgetT YesodHello IO GHC.Tuple.()
--     instance YesodDispatch YesodHello where
--       yesodDispatch yesod_dispatch_env0_a6bN req0_a6bO
--         = case dispatch_a6bP (Network.Wai.Internal.pathInfo req0_a6bO) of {
--             Just f_a6bX -> f_a6bX yesod_dispatch_env0_a6bN req0_a6bO
--             Nothing
--               -> yesodRunner
--                    (notFound >> (return GHC.Tuple.()))
--                    yesod_dispatch_env0_a6bN
--                    Nothing
--                    req0_a6bO }
--         where
--             dispatch_a6bP
--               = Yesod.Routes.Dispatch.toDispatch
--                   [Yesod.Routes.Dispatch.Route
--                      []
--                      False
--                      (\ pieces_a6bQ
--                         -> case pieces_a6bQ of {
--                              []
--                                -> do { Just
--                                          (\ yesod_dispatch_env_a6bT req_a6bU
--                                             -> case
--                                                    containers-0.5.0.0:Data.Map.Base.lookup
--                                                      (Network.Wai.Internal.requestMethod req_a6bU)
--                                                      methodsHomeR
--                                                of {
--                                                  Just f_a6bW
--                                                    -> let handler_a6bV = f_a6bW
--                                                       in
--                                                         handler_a6bV
--                                                           yesod_dispatch_env_a6bT
--                                                           (Just HomeR)
--                                                           req_a6bU
--                                                  Nothing
--                                                    -> yesodRunner
--                                                         (badMethod >> (return GHC.Tuple.()))
--                                                         yesod_dispatch_env_a6bT
--                                                         (Just HomeR)
--                                                         req_a6bU }) }
--                              _ -> error "Invariant violated" })]
--             methodsHomeR
--               = containers-0.5.0.0:Data.Map.Base.fromList
--                   [((Data.Text.Encoding.encodeUtf8 . Data.Text.pack) "GET", 
--                     yesodRunner getHomeR)]
-- helloYesod.hs:12:26-47: Splicing expression
--     "YesodHello!"
--   ======>
--     (asWidgetT . toWidget)
--       ((Text.Blaze.Internal.preEscapedText . Data.Text.pack)
--          "YesodHello!")
-- Ok, modules loaded: Main. 

---------------------
-- HANDLER FUNCTION 
---------------------
-- handler function will handle requests "GET" and gives it the "HomeR" route. 

getHomeR -- these are the kinds of functions that you will make in yesod. 

defaultLayout -- function is the response; it wraps the content in a supplied template. HTML is the default file but it can be made to do more. 

 
[whamlet|YesodHello!|] -- gets passed to the defaultLayout.whamlet and HTML syntax gets remade into a Widget. 

Hamlet 
Cassius 
Lucius 
Julius 

-- these templating engines give us type safe HTML CSS and JS  

-- THE FOUNDATION -- 
-- every yesod app has a foundation data type, and must be an instance of the yesod typeclass; this provides a central place to control many the apps settings.
-- foundation data type will control a database collection pool or settings loaded from a config file, as well as an HTTP connection manager.

-- yesod sits ontop of Web App Interface (WAI) and will run FastCGI, SCGI, Warpand even a desktop app via Webkit library. 

yesodRoutes.hs:1:1: Splicing declarations
    mkYesod
      "Links"
      [yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.ResourceLeaf
         (yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Resource
            "HomeR"
            []
            (yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Methods
               Nothing ["GET"])
            []),
       yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.ResourceLeaf
         (yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Resource
            "Page1R"
            [(True, yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Static "page1")]
            (yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Methods
               Nothing ["GET"])
            []),
       yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.ResourceLeaf
         (yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Resource
            "Page2R"
            [(True, yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Static "page2")]
            (yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Methods
               Nothing ["GET"])
            [])]
  ======>
    yesodRoutes.hs:(7,1)-(9,20)
    instance ParseRoute Links where
      parseRoute (pieces0_a6cU, _query_a6cW)
        = Control.Monad.join (dispatch_a6cV pieces0_a6cU)
        where
            dispatch_a6cV
              = Yesod.Routes.Dispatch.toDispatch
                  [Yesod.Routes.Dispatch.Route
                     []
                     False
                     (\ pieces_a6cX
                        -> case pieces_a6cX of {
                             [] -> do { Just (Just HomeR) }
                             _ -> error "Invariant violated" }),
                   Yesod.Routes.Dispatch.Route
                     [Yesod.Routes.Dispatch.Static (Data.Text.pack "page1")]
                     False
                     (\ pieces_a6d0
                        -> case pieces_a6d0 of {
                             [_] -> do { Just (Just Page1R) }
                             _ -> error "Invariant violated" }),
                   Yesod.Routes.Dispatch.Route
                     [Yesod.Routes.Dispatch.Static (Data.Text.pack "page2")]
                     False
                     (\ pieces_a6d3
                        -> case pieces_a6d3 of {
                             [_] -> do { Just (Just Page2R) }
                             _ -> error "Invariant violated" })]
    instance RenderRoute Links where
      data instance Route Links
        = HomeR | Page1R | Page2R
        deriving (Show, Eq, Read)
      renderRoute HomeR = ([], [])
      renderRoute Page1R
        = (((Data.Text.pack "page1") GHC.Types.: []), [])
      renderRoute Page2R
        = (((Data.Text.pack "page2") GHC.Types.: []), [])
    instance RouteAttrs Links where
      routeAttrs (HomeR {})
        = containers-0.5.0.0:Data.Set.Base.fromList []
      routeAttrs (Page1R {})
        = containers-0.5.0.0:Data.Set.Base.fromList []
      routeAttrs (Page2R {})
        = containers-0.5.0.0:Data.Set.Base.fromList []
    resourcesLinks ::
      [yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.ResourceTree String]
    resourcesLinks
      = [yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.ResourceLeaf
           (yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Resource
              "HomeR"
              []
              (yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Methods
                 Nothing ["GET"])
              []),
         yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.ResourceLeaf
           (yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Resource
              "Page1R"
              [(True, yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Static "page1")]
              (yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Methods
                 Nothing ["GET"])
              []),
         yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.ResourceLeaf
           (yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Resource
              "Page2R"
              [(True, yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Static "page2")]
              (yesod-routes-1.2.0.4:Yesod.Routes.TH.Types.Methods
                 Nothing ["GET"])
              [])]
    type Handler = HandlerT Links IO
    type Widget = WidgetT Links IO GHC.Tuple.()
    instance YesodDispatch Links where
      yesodDispatch yesod_dispatch_env0_a6cv req0_a6cw
        = case dispatch_a6cx (Network.Wai.Internal.pathInfo req0_a6cw) of {
            Just f_a6cT -> f_a6cT yesod_dispatch_env0_a6cv req0_a6cw
            Nothing
              -> yesodRunner
                   (notFound >> (return GHC.Tuple.()))
                   yesod_dispatch_env0_a6cv
                   Nothing
                   req0_a6cw }
        where
            dispatch_a6cx
              = Yesod.Routes.Dispatch.toDispatch
                  [Yesod.Routes.Dispatch.Route
                     []
                     False
                     (\ pieces_a6cy
                        -> case pieces_a6cy of {
                             []
                               -> do { Just
                                         (\ yesod_dispatch_env_a6cB req_a6cC
                                            -> case
                                                   containers-0.5.0.0:Data.Map.Base.lookup
                                                     (Network.Wai.Internal.requestMethod req_a6cC)
                                                     methodsHomeR
                                               of {
                                                 Just f_a6cE
                                                   -> let handler_a6cD = f_a6cE
                                                      in
                                                        handler_a6cD
                                                          yesod_dispatch_env_a6cB
                                                          (Just HomeR)
                                                          req_a6cC
                                                 Nothing
                                                   -> yesodRunner
                                                        (badMethod >> (return GHC.Tuple.()))
                                                        yesod_dispatch_env_a6cB
                                                        (Just HomeR)
                                                        req_a6cC }) }
                             _ -> error "Invariant violated" }),
                   Yesod.Routes.Dispatch.Route
                     [Yesod.Routes.Dispatch.Static (Data.Text.pack "page1")]
                     False
                     (\ pieces_a6cF
                        -> case pieces_a6cF of {
                             [_]
                               -> do { Just
                                         (\ yesod_dispatch_env_a6cI req_a6cJ
                                            -> case
                                                   containers-0.5.0.0:Data.Map.Base.lookup
                                                     (Network.Wai.Internal.requestMethod req_a6cJ)
                                                     methodsPage1R
                                               of {
                                                 Just f_a6cL
                                                   -> let handler_a6cK = f_a6cL
                                                      in
                                                        handler_a6cK
                                                          yesod_dispatch_env_a6cI
                                                          (Just Page1R)
                                                          req_a6cJ
                                                 Nothing
                                                   -> yesodRunner
                                                        (badMethod >> (return GHC.Tuple.()))
                                                        yesod_dispatch_env_a6cI
                                                        (Just Page1R)
                                                        req_a6cJ }) }
                             _ -> error "Invariant violated" }),
                   Yesod.Routes.Dispatch.Route
                     [Yesod.Routes.Dispatch.Static (Data.Text.pack "page2")]
                     False
                     (\ pieces_a6cM
                        -> case pieces_a6cM of {
                             [_]
                               -> do { Just
                                         (\ yesod_dispatch_env_a6cP req_a6cQ
                                            -> case
                                                   containers-0.5.0.0:Data.Map.Base.lookup
                                                     (Network.Wai.Internal.requestMethod req_a6cQ)
                                                     methodsPage2R
                                               of {
                                                 Just f_a6cS
                                                   -> let handler_a6cR = f_a6cS
                                                      in
                                                        handler_a6cR
                                                          yesod_dispatch_env_a6cP
                                                          (Just Page2R)
                                                          req_a6cQ
                                                 Nothing
                                                   -> yesodRunner
                                                        (badMethod >> (return GHC.Tuple.()))
                                                        yesod_dispatch_env_a6cP
                                                        (Just Page2R)
                                                        req_a6cQ }) }
                             _ -> error "Invariant violated" })]
            methodsHomeR
              = containers-0.5.0.0:Data.Map.Base.fromList
                  [((Data.Text.Encoding.encodeUtf8 . Data.Text.pack) "GET", 
                    yesodRunner getHomeR)]
            methodsPage1R
              = containers-0.5.0.0:Data.Map.Base.fromList
                  [((Data.Text.Encoding.encodeUtf8 . Data.Text.pack) "GET", 
                    yesodRunner getPage1R)]
            methodsPage2R
              = containers-0.5.0.0:Data.Map.Base.fromList
                  [((Data.Text.Encoding.encodeUtf8 . Data.Text.pack) "GET", 
                    yesodRunner getPage2R)]
yesodRoutes.hs:11:26-67: Splicing expression
    "<a href=@{Page1R}>Go to page 1!"
  ======>
    do { (asWidgetT . toWidget)
           ((Text.Blaze.Internal.preEscapedText . Data.Text.pack)
              "<a href=\"");
         (getUrlRenderParams
          >>=
            (\ urender_a6hI
               -> (asWidgetT . toWidget)
                    (toHtml (\ u_a6hJ -> urender_a6hI u_a6hJ GHC.Types.[] Page1R))));
         (asWidgetT . toWidget)
           ((Text.Blaze.Internal.preEscapedText . Data.Text.pack)
              "\">Go to page 1!</a>") }
yesodRoutes.hs:12:27-68: Splicing expression
    "<a href=@{Page2R}>Go to page 2!"
  ======>
    do { (asWidgetT . toWidget)
           ((Text.Blaze.Internal.preEscapedText . Data.Text.pack)
              "<a href=\"");
         (getUrlRenderParams
          >>=
            (\ urender_a6hP
               -> (asWidgetT . toWidget)
                    (toHtml (\ u_a6hQ -> urender_a6hP u_a6hQ GHC.Types.[] Page2R))));
         (asWidgetT . toWidget)
           ((Text.Blaze.Internal.preEscapedText . Data.Text.pack)
              "\">Go to page 2!</a>") }
yesodRoutes.hs:13:27-62: Splicing expression
    "<a href=@{HomeR}>Go home!"
  ======>
    do { (asWidgetT . toWidget)
           ((Text.Blaze.Internal.preEscapedText . Data.Text.pack)
              "<a href=\"");
         (getUrlRenderParams
          >>=
            (\ urender_a6hV
               -> (asWidgetT . toWidget)
                    (toHtml (\ u_a6hW -> urender_a6hV u_a6hW GHC.Types.[] HomeR))));
         (asWidgetT . toWidget)
           ((Text.Blaze.Internal.preEscapedText . Data.Text.pack)
              "\">Go home!</a>") }
Ok, modules loaded: Main.
*Main> 


  
