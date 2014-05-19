-- photoSharing 
    trad-- v Paas 

    php + mysql 
        ec2 
            load bal 
            App serv 
            DB 
              Db slaves 
              DB master 

        job workers 
        job servers 
        
            File track
            
            file serv 
    
        Api App
                            Build / Ci Cluster 
    Auth Ap 
                meta data cluster 
    
        internal apps 


    github enterprise 
        
                    cheif server         

------------------------------------------
Herohu 
    iron worker     
        herohu postgres 
            s3  
            cloud font 
                mem cache 
            DynamoDB
                github 
                Circle CI 

-----------------------------------------
twillio 
    hundreds of hosts 
        but it wouldn't run Heroku 
            custom sla 

    modernSLA -- microServices 

Host vs Paas 


----------------------------------------

hosts with modules 
    idealized design 
        what if you could have what you want 
            iterate toward what's next 
                the better you understand the pithier you can be 

    web
            unix 
 dist
    sys 



1 Rule of Modularity 
2  


opinionated 
1 Hackable 
2 One Audience 

Abstract the Host 
    
chef manages hosts 

you want to run Apis with hooks 
    Everything is a service 
    
Processes running in containers 

fast deploys 
    
stack agnostic 

anything that runs in Linux is okay 
    a meta stack 

Edge Oriented 
    state on the edge is known only at the edge 

AppEngine BAtteries inc -- 
   
Heroku is managed processes 

mesos 
    Cluster 


computation work matched to resources 


layers 0 -- container compute grid 
        -- destrib coordination 
            service discovery 
            
    docker containers
        shipping containers 
            stander box 
                fill it 
                runs the same anywhere 
 
ETCD 
    key val store 
        partition tolerent 
    shared state was minimal 
        config coordinated 

brokerless messaging 

(Duplex) -- go 

Flynn - Host 
    host agent interface  



(Manifold) 
    hack dist-compute 


Flynn Layer 1
    heroku control plane 
    config deliver pipe 
    dynamic TCP rout

Host Serv
Git Frontend 
Cont /API 
Router 
SlugBuilder 
SLugRunner 


