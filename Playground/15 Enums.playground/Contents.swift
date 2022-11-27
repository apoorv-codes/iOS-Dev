//Enums

//used to restrict user in a praticular data pool only
enum Marvel{
    case Ironman
    case Spiderman
    case CaptianAmerica
    case BlackPanther
    case Thor
}

var hero = Marvel.BlackPanther

if hero == .BlackPanther {
    print("Wakanda's KING")
}

switch hero {
case .BlackPanther:
    print("Wakanda's KING")
case .CaptianAmerica:
    print("The first Avenger")
case .Thor:
    print("King of Earth")
case .Ironman:
    print("Ironman")
case .Spiderman:
    print("Spiderman")
}

enum MarvelMovies{
    case Name(String)
    case Year(Int)
}

var mName = MarvelMovies.Name("Doctor Strange")
var mYear = MarvelMovies.Year(2016)

switch mName{
case .Name(let movieName):
    print("Movie name is \(movieName)")
case .Year(let movieYear):
    print("Movie year is \(movieYear)")
}


//recursion Enums
// used to provide safety to the value type being accepted
indirect enum ArithmeticExpression {
    case num(Int)
    case add(ArithmeticExpression,ArithmeticExpression)
}


func evaluate (_ expression: ArithmeticExpression) -> Int{
    switch expression{
    case .num(let value):
        return value
    case .add(let first, let last):
        return evaluate(first) + evaluate(last)
    }
}

let a = ArithmeticExpression.num(34)
let b = ArithmeticExpression.num(234)

let addition = ArithmeticExpression.add(a, b)

print(evaluate(addition))


//let additionFail = ArithmeticExpression.add(4,6)
//print(evaluate(additionFail))
