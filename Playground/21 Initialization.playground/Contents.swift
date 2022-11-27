// Initialization

class Concatinate{
    var fName: String = "Captian"
    var lName: String = " America"
    
    var fullName: String
    init(){
        //the self keyword is to specify the reference
        fullName = fName + lName
    }
}


var name = Concatinate()


//constructor / initializer overloading
class Marvel{
    var name: String
    init(movie:String, Date: String){
        print("\(movie) \n \(Date)")
        self.name = movie
    }
    init(hero:String){
        self.name = hero
    }
}


class Hero{
    var hname: String
    
    init(firstname fname: String, lastname lname: String){
        hname = fname + lname
    }
    init(_ fname: String, _ lname: String){
        hname = fname + lname
    }
}


var heroName = Hero(firstname: "Black", lastname: "Panther")
var uname = Hero("Captian", "America")


//no init

class DC{
    var hname: String?
    var movie = "Aquaman"
}

var dc = DC()

//failable inits

struct User{
    var uuid: String
    init? (uuid: String){
        if uuid.count == 5 {
            self.uuid  = uuid
        } else{
            return nil
        }
    }
}


var userMe = User(uuid: "abc")
