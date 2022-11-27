// error handeling

enum UserError: Error{
    case InvalidId
    case InvalidName
}

//throws is keyword used to define that the function will work like a normal function but it may throw errors as well
func userDetails(id:Int, name: String) throws {
    if id == 0 {
        throw UserError.InvalidId
    }
    if name == "" {
        throw UserError.InvalidName
    }
        // here we can write the normal function body
}

//do try catch on error throwing functions


do {
    // use try! means the try statement is going to be executed
    try userDetails(id: 10, name: "")
    
} catch UserError.InvalidId {
    print("Invalid ID")
} catch UserError.InvalidName {
    print("Invalid Name")
}
