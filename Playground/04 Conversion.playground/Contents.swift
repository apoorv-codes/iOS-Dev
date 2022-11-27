//type conversion
let googleStock = 12.5

let userStockBuy:Int = Int(googleStock)

let userAge = "55"

let userAgeInSystem = Int(userAge)

let storedValue = (userAgeInSystem ?? 0) + 5
