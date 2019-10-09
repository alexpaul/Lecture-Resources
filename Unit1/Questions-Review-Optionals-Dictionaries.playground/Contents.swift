import UIKit

// Questions Review: Optionals and Dictionaries
// Optionals
/*
Question 6
a. Given the variable numbers below, write code that prints "The sum of all the numbers is "
followed by their sum. If a number is nil, don't add it to the sum. If all numbers are nil,
the sum is zero.
var numbers = [Int?]()
for _ in 0..<10 {
    numbers.append(Bool.random() ? Int.random(in: 0...100) : nil)
}
b. Using the same variable, find the average of all non-nil values.
*/

var messages: [String] = ["Good, Morning"]
for _ in 0..<10 {
  messages.append("Hello, Yulia") // append() - adds to array
}
print(messages.count)


// a - add only non-nil values
var numbers = [Int?]()
for _ in 0..<10 {
    numbers.append(Bool.random() ? Int.random(in: 0...100) : nil)
}

var sum = 0
for num in numbers {
  sum += num ?? 0 // nil-coalescing to unwrap num
}
print("The sum of all the numbers is \(sum)")


// b - average of non-nil values
sum = 0 // clearing sum
var nonNilValueCount = 0
for num in numbers {
  // use optional binding to unwrap num
  if let unwrappedNum = num {
    // valid integer here, increment nonNilValueCount by 1
    nonNilValueCount += 1
    sum += unwrappedNum
  }
}
print(numbers)
print("The average of the \(nonNilValueCount) non-nil values is \(sum / nonNilValueCount)")


// Dictionaries
// Question Four
// You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the highest score and print his / her full name.

var peopleWithScores: [[String: String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": "13"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": "23"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": "10"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": "3"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": "16"
    ]
]

var highestScore = 0
var fullName = ""
for currentPersonDictionary in peopleWithScores {
  print("currently looking at \(currentPersonDictionary["firstName"] ?? "")")
  let scoreAsString = currentPersonDictionary["score"] ?? "0"
  let scoreAsInt = Int(scoreAsString) ?? 0
  if scoreAsInt > highestScore { // e.g 13 > 0
    highestScore = scoreAsInt // e.g 13
    let firstName = currentPersonDictionary["firstName"] ?? "Jane"
    let lastName = currentPersonDictionary["lastName"] ?? "Doe"
    fullName = firstName + " " + lastName
  }
  print("\n")
}
print("\(fullName) has the highest score of \(highestScore)")
