//Closure

import Foundation

//{
//    (parameter) -> returnType in
//
//    // statement
//}

//simplest closure
var dcWorld = {
    print("Welcome to DC")
}


var myClosure: () -> () = {}


var numClosure: (Int) -> (Int) = {
    (myNum: Int) -> Int in
    return myNum + 2
}

//these closure are just passed for reference only
numClosure(2)


var anotherNumClosure =  { myNum in
    return myNum + 4
}

// a closure with only return type
var founded = { () -> Int in
    return 2022
}

// a closure with only parameter type
var founders = { (name: String) in
    print(name)
}

founders("Apoorv")


// a closure with only parameter type and return type

var anotherFounder = { (name:String) -> String in
    return name
}

var anotherTwoFounder = {(nameOne: String, nameTwo: String) -> String in
    return nameOne + nameTwo
}


let movieNames = ["SucideSquad","WonderWoman","JusticeLeague","Joker","TheFlash"]

var sortNames = movieNames.sorted { (s1: String, s2:String) -> Bool in
    return s1 > s2
}

print(sortNames)


func calculate(num:Int) -> Int {num * 20}

func sum(num1: Int, num2 :Int, closureParam: (Int) -> (Int)) -> Int{
    var sum = 0
    for i in num1...num2 {
        sum += closureParam(i)
    }
    return sum
}

print(sum(num1: 0, num2: 3, closureParam: calculate))

//here completionHandler is a closure which is called after function completion using @escaping
func dataTask(with url: URL, completionHandler: @escaping(Data?, URLRequest?, Error?) -> Void) -> Void{
//    URLSessionDataTask
}

//auto Closure _ variable name not needed
func printNumbers(_ result:@autoclosure () -> Void){
    print("One")
    result()
    print("Two")
}

//printNumbers{
//    print("Three")
//}

printNumbers(print("Three"))
