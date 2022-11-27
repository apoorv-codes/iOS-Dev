// control statements
//



let marvel = [
    "Ironman",
    "The_incredible_hulk",
    "Thor",
    "The_Avengers"
]


//for in loop
for heros in marvel{
    print(heros)
}

//for range loop
for index in 1...5{
    print("\(index) times 5 is \(index * 5)")
}


let base = 3
let power = 10
var answer = 1

// the _ is used to when the iterative variable is not used
//the value in _ will not be stored

for _ in 1...power{
    answer *= base
}

print("\(base) to the power of \(power) is \(answer)")

//while loop

var i = 1, n = 6

while(i <= n){
    print(i)
    i+=1
}


// conditionals
//if statement

var age:Int = 80
var age2:Int = 40

if age > 70{
    print("Hero is getting old")
}

//ternary operator

let young = (age > age2) ? ("hero is old") : ("hero is still young")

//if else

var DcMovie = ["Sucide Squad", "Justice League"]

for movie in DcMovie{
    if (movie == "Sucide Squad" || movie == "Justice League"){
        print("DC Production")
    } else{
        print("Not DC production")
    }
}


var Avenger = [
    "Captian America",
    "Ironman"
]

for hero in Avenger{
    if hero == "Captian America"{
        print("Top Avenger")
    }else if hero == "Ironman"{
        print("Stylish Avenger")
    }else{
        print("NOT AN AVENGER")
    }
}
