//Talking about Ranges

/* we can also do comments using */


/*
 operators:
 +, -, *, /,%
 
 assignment operators:
 
 +=, -=, *=, /=

 comparative operators:
 ==, !=, >=, <=

 */

var result = 4+4
print(result==9)


//Range: a...b -> {a to b} , a..<b -> {a to b-1} , a<..b -> {a+1 to b} , a... -> {a to INFINITE} , ...b -> {0 to b}
//range is of two type : half open and closed

var myRange = 1...5
// once we define a range we have many inbuilt methods for it

print(myRange.contains(5))
