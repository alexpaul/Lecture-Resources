import UIKit

// String - a collection of unicode compliant characters

/*
 Vocabulary
 - unicode
 - character
 - literal String e.g "hello"
*/

// declaring and initializing a literal String
var message = "Good morning iOS 6.3"

// iterate or loops over a String using a for-in loop
for char in message {
  print("character is \(char)")
}

// length of String using the count property
print("message count is \(message.count)")

"melinda".count

// ============================================
//                  unicode
// e.g a space in unicode U+0020
// ============================================

// a character is made up or one or more unicode scalars
// e.g of unicode scaler \u{301} `e

// combining unicode scalars
let name = "al\u{0065}\u{301}x"

let bagel = "\u{1F96F}"


// comparing unicode scalar with character
let unicodeLowercaseE = "\u{0065}"
let eCharacter = "e"
if unicodeLowercaseE == eCharacter {
  print("they are equal")
}

// accessing and modifying String
let programmingLanguage = "Swift"

let fellows = ["Kelby", "Stephanie"]

fellows.count // 2

let firstFellow = fellows[0]

// access the first character in "Swift" => "S"
// programmingLanguage[0] - DOES NOT COMPILE

// firstIndex is of type String.Index
let firstIndex = programmingLanguage.startIndex

// only way to subscript [] into a String is using a String.Index value
let firstCharacter = programmingLanguage[firstIndex]
print("first character in \(programmingLanguage) is \(firstCharacter)")

let endIndex = programmingLanguage.endIndex
let lastCharacterIndex = programmingLanguage.index(before: endIndex)
let lastCharacter = programmingLanguage[lastCharacterIndex]
print("last character in \(programmingLanguage) is", lastCharacter)


// ============================================
//           making a range using indices
// ============================================

let alphabets = "abcdefghijklmnopqrstuvwxyz"

// using a for loop print out the first 6 characters in the alphabet
var counter = 0
for char in alphabets { // 0, 1, 2, 3, 4, 5
  if counter < 6 {
    print(char) // a, b, c, d, e, f
    counter += 1
  } else { break }
}
print("for loop has ended")

// using a for-loop and enumerated print the first six alphabets
for (index, char) in alphabets.enumerated() {
  if index < 6 { // 0, 1, 2, 3, 4, 5
    print("\(char) at index \(index)")
  } else {
    break
  }
  print("going through alphabets")
}

let alphabetsStartIndex = alphabets.startIndex



// ============================================
//           multi-line Strings
// ============================================

let swiftBird = """
:'######::'##:::::'##:'####:'########:'########:
'##... ##: ##:'##: ##:. ##:: ##.....::... ##..::
 ##:::..:: ##: ##: ##:: ##:: ##:::::::::: ##::::
. ######:: ##: ##: ##:: ##:: ######:::::: ##::::
:..... ##: ##: ##: ##:: ##:: ##...::::::: ##::::
'##::: ##: ##: ##: ##:: ##:: ##:::::::::: ##::::
. ######::. ###. ###::'####: ##:::::::::: ##::::
:......::::...::...:::....::..:::::::::::..:::::
"""

print(swiftBird)


// ascii art
let multilineString = """
///////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////.////////////////////////////////////
//////////////////////////////////////////// */////////////////////////////////
///////////////////////////// ////////////(((  .///////////////////////////////
///////////////////////// ///// ///////((((((/   //////////////////////////////
/////////////////////////// ////  ///(((((((((     ////////////////////////////
////////////////////////////   ///  *(((((((((      ///////////////////////////
//////////////////////////////   ,(    (((((((.     ,//////////////////////////
///////////////////////////////(    (     ((((       //////////////////////////
/////////////////////////////(((((          .(       //////////////////////////
//////////////////////////(((((((((/                 ,/////////////////////////
////////////////////////((((((((((((((               //////////////////////////
//////////////////////  ((((((((((((((((             //////////////////////////
////////////////////////     *(((((((                 /////////////////////////
//////////////////////////                             ////////////////////////
/////////////////////////////                           ///////////////////////
/////////////////////////////////             ///////// ///////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((
(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((
"""
print(multilineString)


