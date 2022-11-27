class Comic{
    var production:String = ""  // these are called properties since these are the variable that is defined in a class=
    var name: String = ""
}


var comic = Comic()

comic.name = "Black Widow"
comic.production = "Marvel"

print("Name is : \(comic.name)\nProductions is: \(comic.production)")


// lazy stored properties

class ComicStore{
    var name: String
//    lazy variable are not defined immedieatly and not use any memory or processing power they are only defined if they are used
    lazy var comicInfo: String = {
        return "Welcome to \(self.name)"
    }()
    
    init(Name: String){
        self.name = Name
    }
}


let store = ComicStore(Name: "Marvel Production")
print(store.comicInfo)

//computed properties

class Circle{
    var radius: Double?
    var cval: Double?
    var Area: Double{
        //getter and setters are generally used to process , store and use the values
        get {
            return radius! * radius!
        }
        set(newArea){
            cval = Double(newArea) * 3.14
        }
    }
}


//getter setter use case

let result = Circle()

result.Area = 20 // here setter is used
print(result.cval!)


// read only properties

class Multiplication{
    var num1: Int = 5
    var num2: Int = 5
    
    var multiply: Int{
        get{
            return num1 * num2
        }
    }
}

let res = Multiplication()
//res.multiply = 33 this is not possible as setter is not defined in the property so it is a read only property
print(res.multiply)


//swift property observer
class Changes{
    var num1: Int = 10{
        willSet(newvalue){ // runs when we are about to set the value
            print("\nvalue of \(newvalue)")
        }
        didSet{ // runs after the value is set
            if num1 > oldValue{
                print("Added \(num1 - oldValue)")
            }
        }
    }
}


let answer = Changes()

answer.num1 = 56
answer.num1 = 345
