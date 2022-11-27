var accountBalance = 199
var alertTrigger = 100
var offerTrigger = 150

// <, >, >=, <=, !=, ==

if accountBalance <= alertTrigger{
    print("Please recharge your account")
} else if accountBalance >= offerTrigger{
    print("We are offering you a credit card")
}



var googleCredential = true
var paymentInfo = false

if googleCredential && paymentInfo{
    print("make purchase")
} else{
    print("not allowed to purchase")
}

var courseName:String?
var isLoggedIn: Bool? = true


//proper optional unwrapping

if let getCourseName = courseName{
    // prints the courseName and allocates memory of getCourseName only if the courseName is present
    print(getCourseName)
}

//dictionary unwrapping using if
var courseWithPrice: [String: Int] = [
    "Reactjs": 199,
    "angularjs": 299
]


if let user = isLoggedIn, let reactPrice = courseWithPrice["Reactjs"]{
    //if any one value is missing then any of the values will not unwrap at all
    print("User is \(user) and Price is \(reactPrice)")
}
