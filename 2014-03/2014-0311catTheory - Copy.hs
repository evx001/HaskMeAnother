Cat Theory 
Tom LaGatta
---------------------------
MathOverflow

NLAB  catagory 
	nPOV n-catagories  

Mackane catagories for the working math

Lawvere and schanuel conceptual math
 
spival cat theory for scientists 
	database schema are catagories 
	c = your db schema 
		objects are tables 
				graphs 
		morphisms are foriegn keys 
		a filled in db is a functor 
			which goes from schema to sets 
		maps are fucntions between sets 
		
---------------------------
	obj v catagories
		a certain type of abstract thinking 
		may not solve all  
		but will show you where they aren't 
		what is precision and isn't trivial 
	Cat~ is a Math object
		objects / colections 
		morphisms arrows between obj preserving 
			structure preserving maps between objects 
		Structure 
			provided by the catagory itself 
		 
	Every Morph 
		has a source or target object 
	Every object has an identy morph 
	
	Associative 

	morphisms are closed under composition
		source and catagory agree 
	morphisms 
		relates to catagory otherwise it makes no sense independantly 

	.->.->. 
	
	Catagory 
		a unifying language 
			half of all mathies know it 
		Anaylitics v algebra is the math devide 
		 
	Cat theory 70 years 
		much syntatic sugar has sprung up 
	 
	C = set, catagory of sets 
		objects and morphims go in. 
		objects ~= sets
		morphism ~= on sets 
		source and target 
		mapping with composition 
		stucture, membership
		cardinality -- their size 
		Cantor -- sets have cardinality but are maximally unstructured 
			sets are kind of bagage free 
		sets collections /= unique 
		types structure set to set mapping 
		
	c = MAN -- catagory of manifolds 
		objects smooth manifolds -- geometrically speaking  
			atlases 
		morph smooth maps 
		structure gives us calculous   
	cat theory glue maps together to make manifolds 
		
	c  =  vect / R  Cat of finite dim vect spaces
		object  =  finite dimentional vect over R 
				 spaces 
		morphims linear transformations / maps 
		Structure linearity 

	c = Topological Vect/r  sp 
		comes with the necessary data  
		toplogical vector spaces 
		shape of spaces 
		types of flatness 
		notions of convergences 
		holes 
		continuous linear maps
		linear and topological  		

	c = Hil-bert Spaces	
		objects are Hil spaces 
		morphs unitary maps 
		length and angle 

	foundations may or may not matter 

	c = Haskell, 
		Hask
		Cat of Haskell types 
		types and how they fit together whether it is foundationally relavent 
		H.O.T.T. 
		obj are haskell types 
		morph are haskell fucntions 
		types ~= spaces ~= types
		struct cart closed -- seeley 
			subcatagories 		
		homophonic Types  
		structural idenditi 	
	
	c = Clojure types 
		one type: T :: T -> T
		types appear on the right not on the left 
		one object and maps back to that object 
			this a picture of dynamic typing. 
		on the right is the instance object which can make type constraints 
		
	C = catagory of catagories 
		Objects are catagoies 
		morphisms are functors 	
			a stucture preserving map between catagories 
		objects -> objects  -- you can throw objects away via the identity morphism 
		morphisms -> morphisms 
			in a way that preserves compositions 
		source and target alignment 
			functors 		
		indentity 
		. -- . 
		diff equations maps to identifiers 
			
	is there a pragmatic value of seeing diagrams as mathmatical constructs as a catagory 
	every 
		cat -> diagram -> to catagory 
	
	Catagory theory is a lingua Franca 
		between disciplins 
		formalizes structure 
		precision 
		properties 
		Natural
		canonical 
		universal 
		symantics 
		syntax 
		 
		
2 catagory 
	objects 
	morphisms of morphisms  

3 catagory 
	objects 
	morphisms 
	2 morph 
	3 morph 
--------------------------------------
topology as more acceptable than cat theory 

yoneda lemma 
	deep and trivial 
		"it's deep, shows up in a lot of spaces, a theorem in that context trivial to prove" 
	conceptually we understand an obj by it's action on all other objects or we understand an object by all objects on it. 
	like taking a program and providing a host of 

c = any (localy small) catagory 
	c-op = opposite 
		flip the morphisms 
		functor (c-op, set) = catagory of functors c-Op --> set 
	objects: functors 
	morphisms: natural transformations (conjigations)  
	
	
