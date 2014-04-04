// Language feature or bug?  
// eval is a built in security flaw 
> '' ==   '0'
false
> 0  ==   ''
true
> 0  ==   '0'
true
> false ==   'false'
false
> null  ==   undefined
true
> " \t\r\n" ==   0
true
> 2 == [2]
true
>  3..toString() // needs extra . 
'3'
>  3.toString() // the expected version 
... // just fails
> 2 == [[[2]]]
true
> "5" - 3
2
> "5" + 3
'53'
> "0" +  0
'00'
> "0" -  0
0
> 10 == "10"
true
> 10 == "+10"
true
> 10 == "-10"
false
> '' + 10 === '10' // plus concatinates 
true
