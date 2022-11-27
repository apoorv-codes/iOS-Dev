// sets are mathematical objects that are working in programming as a data structures
// sets are declared like : 1 set_name: Set<DataType>
//                          2 set_name: Set = []

// sets only stores unique values

var challanges: Set = [
    "get the flag",
    "fold the flag",
    "take stones",
    "fold the flag",
    "get to the home"
]

var challangesv2: Set = [
    "get the flag",
    "get the guns",
    "fire the guns",
    "get to the home"
]

challanges


challanges.contains("get the flag")

challanges.sorted()

// in sets values should be hashable if not they need to follow a protocol of hashable
// int and strings are hashable


// operations on sets
var intersectionChallanges = challanges.intersection(challangesv2)

challanges.symmetricDifference(challangesv2)


//union
challanges.union(challangesv2)
//subtracting
challanges.subtracting(challangesv2)
challangesv2.subtracting(challanges)
