//tuples are used to store multiple values of different types together
//method 1: var course: (String, Int, Bool) = ("IOS course", 999, true)


// we can use naming conventions as well in tuples in swift
var course: (courseName: String, coursePice: Int, courseStatus: Bool) = ("IOS course", 999, true)
course.0


var (courseName, coursePice, courseStatus) = course

courseName
