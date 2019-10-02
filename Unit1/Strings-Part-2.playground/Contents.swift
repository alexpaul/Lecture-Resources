import UIKit

// Strings Part 2

// question: given a String switch on it and print all the characters if it is even or print every other character if it is odd

let message = "Bad boy"

print("there are \(message.count) characters in the string")

if message.count % 2 == 0 {
  print("string is even")
} else {
  print("string is odd")
}

// solution for question above:
switch message {
case message where message.count % 2 == 0:
  for char in message {
    print(char, terminator: " ")
  }
default:
  for (index, char) in message.enumerated() where index % 2 == 0 {
    print(char, terminator: " ")
  }
}
print()
// "\n" is the endline escape character

//================================================
//               escape characters
//  e.g "\n" - newline "\t" - tab "\"" - quote
//================================================
// newline example
let message1 = "Hello\niOS 6.3\nGreat to have you!"
print(message1)

let tabMessage = "\tProgramming in fun"
print(tabMessage)

let quote = "In \"2014\" Swift was introduced"
print(quote)

let multiline = """
Hello
It's
Hot out today
"""

print(multiline)


//================================================
//        Using String initialization methods
//================================================

// declaring and initializing a Character
// we have to explictly use type annotation to get a valid Character data type
let char: Character = "a"

// initializing a String from a Character
let str = String(char)

print(type(of: char))
print(type(of: str))

// initialize a String from an Integer (Int)
let currentYear = String(2019)
print("current year is \(currentYear)")

let float: Float = 23.56
let double = 45.12
let result = Double(float) + double
print(result)

//================================================
//  string format e.g formatting decimal places
//================================================
print("the result of the calculation above is", String(format: "%.2f", result))


//================================================
//          creating a range on a String
//================================================
let messageToSelf = "I really love Swift and I'm passionate about coding."

// getting the first position of messageToSelf
let startIndex = messageToSelf.startIndex

let offsetToSomeCharIndex = messageToSelf.index(startIndex, offsetBy: 18)
let range = startIndex...offsetToSomeCharIndex

// DOES NOT COMPILE SUBSCRIPT [Int] NOT ALLOWED USING AN INT, ONLY WORKS ON A [String.Index] type
//let substring = messageToSelf[0]

let substring = messageToSelf[range]

print("substring is \(substring)")


//================================================
//  search for the index of a character in a String
//================================================
let swiftMessage = "I really love Swift ♥️"
// emoji => control, command, space

let charIndex = swiftMessage.firstIndex(of: "♥️") ?? swiftMessage.startIndex

print("We found \"\(swiftMessage[charIndex])\" in swiftMessage String")


//================================================
//                prefix and suffix
//================================================

// hasPrefix
let name = "alex"
if name.hasPrefix("al") { // hasPrefix() method return a Bool whether the prefix in the String was found
  print("Hi Al!")
}

// hasSuffix
let message2 = "questions"
if message2.hasSuffix("ions") {
  print("we also have onions")
}

// contains
if message2.contains("q") { // runtime for contains is linear or big o of n or O(n)
  print("message2 contains q")
}


//================================================
//          some Character properties
//================================================
let character1: Character = "y"
if character1.isLetter {
  print("\(character1) is a letter")
}

// isCurrency e.g $

// isPunctuation e.g ?

// isNumber e.g 4


//================================================
//           NSString is an Objective-C API
// API: application programming interface
//================================================
var message4 = "coding"
message4 = message4.replacingOccurrences(of: "g", with: "🚀")
print(message4)

let fullname = "Alex Paul Hurtado"
let separatedNames = fullname.components(separatedBy: " ")
print("there are \(separatedNames.count) items")

print(separatedNames)
