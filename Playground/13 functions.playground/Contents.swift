//Functions

/*
 syntax:
 
 func functionsName(parameters: paramenterType) -> returnType {
    //statements
    //more statements
 
    return parameters
 }
 */


func avengers() {
    print("Hello Avengers!!")
}

avengers()


//functions with parameters

func avenger(year: Int){
    print("Avengers was released in \(year)")
}

//multiple paramenters
func Avenger(x:String,y:String){
    print(x + " " + y)
}

Avenger(x: "Avengers", y: "Age of ultron")

//multiple return type
func avengerMovie() -> (String,String){
    let movieName = "Avenger"
    let series = "Infinity War"
    
    return (movieName,series)
}


var val = avengerMovie()
print(val.1)


func add(a:Int, b:Int) -> Int{
    return a + b
}

var addition: (Int, Int) -> Int = add

print("10 + 90 = \(addition(10,90))")
