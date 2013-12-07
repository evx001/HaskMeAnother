// NODE.js

http module 
express + passport 

Dont trust the client 
	funny bugs there 
		authentication spoofed 

request parms 

no plain test storage 
	each with a unique 

store user info in some database

Load Balanced = Stateless

MD5 is broken 

PBKDF2 
	iterate to 10-20k

code demo 

the listener.js 

	users.create

		throws away pw

	var useSalt = 

	redis.set(

storing token 
	var SetCookie = function( 
		http only 
	no expiration set means session level expiration 
	
	statelessness 
		is reed cookie every time 
		performance bottleneck 
		so cache it 
		
	salt and pw 
		in one string??? 
		but it's a JSON obj so ...
			two steps  
		but you can do it if you want to 
			for performance 
'aes-256-cbc'	
Ubuntu 
	PlainTest 
Block cypher 
	ECB is almost guess-able 
CBC Encrypted 
	more noise like 

Not -  - NODE ready but cooler still 
	GCM = Galios/Counter Mode
	can only be opened with same key and vector

CBC for cookies is the best we have in Node presently 


 

different and new ???
	yes and it's bad 
LearningT I is one legged OAuth
	thier site is bad <xml> from old . . . 
	
		
