// Aviary
// 	Ari 
// 	Jeff 
//
// 	portal edit 
// 		crop pics
// 			Ios / Android 
// 			an sdk 
// 	Backed UI
//
// Node in producton 
// 	it all happened on the device 
// 	but out of the box didn't work
// 	we bult our own 
// 	Content Deliv Serv CDS 
// 	headed to Server-Side Rendering API 
//
// 	redndering farm 
// 		
// Why node? 
// 	was .Net -- overhead inflexable -- 
//
// 	fast light 
// 	Easy iter
// 	common lang for front back 
// 	JSON 
// 	Cross PLat
// 	npmm 
// 	express 
// 	Active Commun
//
// Neer 
// 	Express
// 	npm 
//
// Setting up Server 
// 	All APi servers require (routes.json) 
//		controllers 
//			home 
//			queue
//
//	require loads once no matter how often called 
//
//
//
//	Request --> server listens ----> Middleware ----> Logged in? 
//	
//	yes logged in ---> permissions ----> Request-Handler --> responce 
//
//	no logged in --> loop back to loggin ---> Authenticate user saved in cookie ----> Yes 
//
//	google authentication 
//		google biz apps 
//		
//	passort for authentication third party plug in. 
//
//
// Jack and JSON 
// 	consuming or delivering JSON 
// 		JSON schema 
// 			validateds JSON DOCs
//
// 	Schema is a JSON type classing 
//
//
// 	Effects 
// 	Frames 
// 	Stickers 
// 		all delivered as JSON 
//	
//	same from us content but 
//	25 diff sets of content 
//
// 	Android expects responses diff from IOS and IOS 1.0 is diff from IOS 2.0
//	
//	responce formatting 
//		JSON obj ---> Responce format 
//				* --->  
//				@ --->
//				$ --->
//	
//	client does format of schema ---> so server get preformatted
//		GET requests  
//		
//
//	var formattedResponse = {} 
//		for (var propName in responseFormat 
//
//	
//
//
//	reads writes ratio is heavey read 
//	stable 
//	JSON SCHEMA 
//
// Jason 
// 	External Processes 
// 		HighRes server to be rewritten from .NET and C++
// 			external process 
// 			make use of node as a broker 
// 			
// 			requires ('child_process').spawn('renderer.exe')
// 			
//----------------------------------------------------------------------------
//
//			var spawn = require('child_process').spawn 
//
//			var = renderer = spawn('renderer.exe', ['-i', 'inputInamge.jpg', ... ]);
//			
//---------------------------------------------------------------			
//
//		render.on('close', function (code, signal) { 
//			var diagnostics = JSON.parse(json); 
//			var img = Buffer.concat(buffers);
//			}); 
//----------------------------------------------------------------------------------------------
// 				easy IPC async 
//
// 	Gottchas 
// 		C++ does the rendering which good for graphic manipulation  
// 			easy through .NET 
// 			Node not good native manipilation 
// 	
// TESTING 
// 	UNit test single purpose functions 
// 	integration tests end to end is the focus 
//	MOCHA -- really good for unit testing 
//	Enforced before push 
//		both master and Dev.
//	Under 30 seconds for a result 
//	
//
//	Bash script 
//	independent files 
//	shared config 
//	single failure stops processes 


	mocha scopecreation && 
	mocha cmsformation && // && are the stoppers  
// 		seeding is done sparingly
// 			otherwise our testing would take too long 	
	mocha crfcreation 

// single failure will stop the processes 
// 
// Neer 
// 	mongo is schemaless 
// 		drop and remake is quick 
// 		for test db
// 	faster than SQL for testing 
//
//  us ---> Git ---> change -------> 	Jenkins ---> AWS API 
//  					---> S3 
//  					---> SSH ---> server and run bootstrap 
//  				<--- poling repo
//
// Bootstrap 
// 	bootstrap.sh
// 	bash 
// 	Ensure depends
// 	Download and extract 
// 	Check HTTP traffic routed to right Port??
// 		route from port 80 
// 			as node can't listen on 80 
// 	keep all old until 
//
// 	compiled languages prevent hotswap
// 		so code update on the fly 
// 	Any runtime file needed in write or read has to be safe-guarded
// 		roll back via source control 
// 	Live production bugs would require roll back  
//	
//	npm updates --> crashed our servers ---> version control 
//		 
//	package.json -- versioning 
//	Node.JS + MongoDb nice 
//	Make sure you understanding hoisting -- KNOW THIS BUG --- LOOPS AND ASYNC 
//	always call back ASYNC 
//	always return after callback 
//	Node has platform variations 
//	middle ware sparingly authentication, and such  
//	dates must be UNIX TIMESTAMPS 
//		date objects in JS are out of whack
//	Time Zones suck 
//	THrowing unhandle errors will crash the process. 
//		an unexpected 
//		try catch isn't as common in JS. 
//	
//
//  serve dynamic content 20 mill  --> 70 mill goal 
//	powers aviary.com 
//	quick scripts and internal tools 
//	everybody knows JS 
//		log real time reciept data 
//  
//  low res is handled on clientside
//  node and 
// 	 missing dependency injection
//  mongo via native driver 
// 
//  new relic 
//
//  serverside dev 
//  	monitoring 
//  	
//  mongo cluster 
//
//  nginx for static ? 
//  	our node not much public facing 
// 
//  	mysql is seperated out for analytics etc. 
//  
//  from .NEt --> node 
//  	small idea exicuted quicker than .NET ideas
//  	>NET was less flex 
//  	Ten dev
//  	3 server dev team
//   
//
