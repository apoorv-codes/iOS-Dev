//In swift Dictionaries are declared in the form: Dict_name: [keyType: valueType]

var youtubeVideos: [String: Int] = [
    "react course": 1122,
    "angular course": 3344,
    "nodejs course": 5566
]


var angularVideo = youtubeVideos["angular course"]

youtubeVideos.keys
youtubeVideos.values
//this returns a chained data as a single object we need to unchain them

[String](youtubeVideos.keys)
[Int](youtubeVideos.values)


//whenever we update a value the update function returns the previous old value
var nodejsId = youtubeVideos.updateValue(6666, forKey: "nodejs course")

//removing

//youtubeVideos["nodejs course"] = nil
youtubeVideos.removeValue(forKey: "nodejs course")


var faq = [
    "faq 1": [
        "question": "what is the start date of the course",
        "answer": "tommorow"
    ],
    "faq 2":[
        "question": "what is the price",
        "answer": "50k INR"
    ]
]
// direct calling variables like this may throw error as in complex structures values may be nil
var questionTwo = faq["faq 2"]?["question"]
