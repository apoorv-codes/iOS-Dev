//class

class DC{
    var series: String
    var aired: Int
    var network: String
    
    init(Series: String, Aired: Int, Network: String){
        self.series = Series
        self.aired = Aired
        self.network = Network
    }
}

var dc  = DC(Series: "Wonder women", Aired: 2017, Network: "Atlas")

print("Movie name is \(dc.series)")

// classes are reference type

class Details{
    var name: String
    init(name: String){
        self.name=name
    }
}


var minfo = Details(name: "Superman")
var minfoTwo = minfo

print(minfo.name)
print(minfoTwo.name)

minfoTwo.name = "Batman"

print(minfo.name)
print(minfoTwo.name)
