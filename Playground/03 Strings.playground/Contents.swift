var greeting = "Hello, playground!" // this is a string
var username: String = "Apoorv"
var age = 44

//string interpolation: to put data into a string obj
var myFinalNotice = "user's age is \(age) and he lives in Canada" // "\()" for putting variables in string

var result = greeting + " " + username // strign concatination

print(result)


//using some basic string methods
//NOTE: these are only for some basic tasks not for complex task use/create your own methods for that
//methods with m in suggestion returns a resultant string

greeting.count
greeting.contains("p")
greeting.isEmpty
greeting.split(separator: ",")
greeting.codingKey
print(
    greeting.endIndex
)
greeting.min("a", "o")
greeting.replaceSubrange((greeting.firstIndex(of: "p") ?? greeting.startIndex)!...(greeting.firstIndex(of: "!") ?? greeting.endIndex)!, with: "Apoorv")

greeting.max()

greeting.insert("!", at: greeting.index(before: greeting.firstIndex(of: ",") ??  greeting.startIndex))

greeting.hasSuffix("poorv")
print(greeting)
