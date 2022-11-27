// ways to define arrays in swift

var marvelHeros: [String] = ["Ironman","Spiderman","Thor"]
var dcHeros: Array<String> = Array<String>()  // method 2


marvelHeros.count
marvelHeros.isEmpty


marvelHeros[0]
marvelHeros[0] = "Captian America"
marvelHeros


marvelHeros.append("Ironman")

marvelHeros.insert("Deadpool", at: 1) // user with caution as it will shift elements in the array which will take processing power

//makes a copy
marvelHeros.sort()
marvelHeros
marvelHeros.reverse()
marvelHeros
//works on the same array
marvelHeros.sorted()
marvelHeros
marvelHeros.reversed()
marvelHeros
