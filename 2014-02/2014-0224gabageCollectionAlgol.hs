module Feb24 where 
garbage-Collection matter and antimatter approaches 2004 Bacon, Cheng Rajan 
Standing on the shoulders of giants or running into their shins. 
	rubiests & GC they should know 

	Macarthy playing chess against the computer in the 60s
	1960 both GC approaches came to light 
	
GC 
Heap - a data structure to model the program memory 
	tree like hunk of memory vitalized as a concept   
	dynamic and fix sized allocation are possible 
	  
Mutator 
	transforms the mem contents IO to storage 
	mutates the heap
Collecter 
	bookkeepr of the mem allocation 
Roots 
	areas of the heap where you have root access. 
	program stack, the beginnig 
Barriers 
	mutator can inform 


ref counting / ios and Cpython`
	
GC				mark and sweep 		ref counting 
----------------------------------------------------------------------

Collection style		batch 			Incremental 
Cost Per Mutate 		None 			High
ThroughPut 			High 			Low 
Pause Times 			Long 			Short 
Real Time 			No 			yes 		
Collects Cycles 		Yes 			No
starting points 		Roots 			Anti-roots 
Graph Traversal 		Fwd from Roots 		Fwd from Anti-roots 
Objects Traversed 		Live 			dead 
Initial RC 			Low (0) 		high 
RC Reconstruction 		Addition 		Subtraction 
Extra Iteration 		Sweep Phase 		Trial Deletion 


Ref Counting 
	bookkeeping while marking 
	updating is expensive 
	delayed collector 
	floating garbage 
	long Pause 
	caching 
	
	
Mark and Sweep
	allocate and allocate 
	then stop and then stop and sweep 
	freeing of dead objects is delayed 
	Generational Collection a 90-s improvement



	
Algorithmic Doppelgangers 

Hybrids rock back and forth between each approach 

??? single core v multi-core considerations 

"Intuitively, one can think of tracing as operating upon live objects or “matter”, while reference count- ing operates upon dead objects or “anti-matter”. For every oper- ation performed by the tracing collector, there is a corresponding “anti-operation” performed by the reference counting collector."

Other algorithmic Duals 
primal problem 
	dual problem
 
primal dual 

Partition Divided memory (heap, stack and global variable) into a set of partitions within which different strategies may be applied. 

Traversal For each partition decide whether the object graph will be traversed by tracing or reference counting and 

Trade-offs For each partition, choose space-time trade-offs such as semi-space vs sliding compaction, pointer reversal vs stack traversal etc. 


Take away  --  you need both approaches to make up for each's deficits 

 
		
