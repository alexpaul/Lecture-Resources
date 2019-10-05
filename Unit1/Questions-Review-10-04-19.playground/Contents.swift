import UIKit

// Questions Review: October 4, 2019

// String Lab
// Question: Given a String use a for-in loop to reverse it. e.g input: "hello" output: "olleh"
let message = "hello"
var reversedString = ""

let str1 = " " // whitespace character
let str2 = ""

if str1.isEmpty {
  print("str1 is empty ")
} else {
  print("str1 is NOT empty")
}

if str2.isEmpty {
  print("str2 is empty")
}

for currentChar in message {
  // we want to loop through the given message String and add the characters we visit in reverse order to our reversedString variable
  
  //reversedString = currentChar.description + reversedString
  print("currentChar: \(currentChar) reversedString: \(reversedString)")
  
  reversedString = String(currentChar) + reversedString
  
  print("currentChar: \(currentChar) reversedString: \(reversedString)")
  
  print("============================")
  // (currentChar + reversedString)
  // 1. "h" + "" => reversedString = "h"
  // 2. "e" + "h" => reversedString ="eh"
  // 3. "l" + "eh" => "leh"
  // 4. "l" + "leh" => "lleh"
  // 5. "o" + "lleh" = > "olleh"
}
print(reversedString)



// Arrays Lab
/*
 Question:
 Given an array of Strings, find the String with the most a's in it.
 
 input: ["apes","abba","apple"]
 
 output: "abba"
*/
let arr = ["apes","abba","apple", "blh", "haah"]

// how do we keep track of the String with the most "a" characters?
var overallCount = 0
var stringWithMostAs = ""

for str in arr {
  // in the future we can use filter{} here
  
  // we will create a local variable to keep track of a's in current String
  var localCount = 0 // has local scope within the for-in loop
  // scope entails a variable can ONLY be accessed with its curly bracket boundaries {....}
  for char in str { // String.Element is the same as Character
    if char == "a" { // "apes"
      localCount += 1
    }
  }
  // here we will compare a's count
  if localCount > overallCount { // 1st time looking at apes, apes is more
    overallCount = localCount // override overallCount
    stringWithMostAs = str // override String being tracked
  }
}
print("\(stringWithMostAs) has the most a's which has a count of \(overallCount)")





