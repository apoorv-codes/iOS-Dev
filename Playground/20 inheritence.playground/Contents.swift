// inheritence


class Heros{
    var name: String = ""
    var gender: String = ""
    var age: Int = 0
    
    init(Name:String,Gender: String, Age: Int) {
        self.name = Name
        self.gender = Gender
        self.age = Age
    }
}


class Marvel: Heros{}
class DC: Heros{}


let marvelHero = Marvel.init(Name: "Thor", Gender: "Male", Age: 1500)

//overriding methods

class Avenger1{
    func partName(){
        print("The Avengers (Super Class)")
    }
}

class Avenger2: Avenger1{
    override func partName() {
        print("The Avengers: Age Of Ultron")
    }
}


//overriding properties

class Avenger3 {
    var year = 2018
    var movieName: String{
        return "Avengers: Infinity War"
    }
}

class Avenger4: Avenger3{
    var releaseYear = 2019
    override var movieName: String{
        return "Avengers: Endgame"
    }
}
