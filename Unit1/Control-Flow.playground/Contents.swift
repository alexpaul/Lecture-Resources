import UIKit

// Control Flow, Tuples

// if / else

// block of code { code in here }

/*
 // example 1 - if statement
 if(some condition is true) {
 execute code
 }
 other code runs as normal
 
 // example 2 - if/else statment
 if(some condition is true) {
 execute this block of code
 } else {
 something other statement will get executed
 }
 other code runs as normal
 
 // example 3 - if/else if/ else
 
 */

// built-in functions we have seen so far include:
/*
 print()
 lowercased()
 round() - e.g 1.345 => 1.35
 */

//====================================================
//                      if
//====================================================

var day = "Friday"//.lowercased()

if day == "friday" {
  print("woohoo TGIF 🍺")
}
print("control flow is cool")


//====================================================
//                      if / else
//====================================================

day = "Monday".lowercased()

if day == "saturday" {
  print("it's a beach day")
} else {
  print("just another day")
}

day = "monday"

print("Today is \(day)")



//====================================================
//                      if / else if / else
//====================================================

var temperature: Double = 0 // degrees

if temperature < 45 { // scope of if block is within curly bracket { ... }
  print("it's cold don't forget your gloves")
  if temperature == 0 { // nested if statements
    print("I'm dead")
    // danger zone approaching pyramid of death 💀
    //    if {
    //      if {
    //        if {
    //          if {
    //
    //          }
    //        }
    //      }
    //    }
  }
} else if temperature == 85 {
  print("this is my kind of weather")
  print("cool let's have a picnic")
} else {
  print("the temperature for today is \(temperature)")
}


//====================================================
//                      Ternary Operator - means 3
//
// (condition - means evaluates to true or false)
// (conditon) ? execute if true : execute if false
//                        vs
// if (condition) {
//    // code here
// } else {
//
// }
//====================================================

var age = 20

print(age > 20 ? "you can have that drink 🍺" : "get back to Grandma's house")



//====================================================
//                    Switch Statement
//====================================================

var cohort = "web".lowercased() // input

switch cohort {
case "iOS".lowercased():
  print("iOS is awesome!!!!") // outputd
  print("great to have you guys")
case "android":
  print("droids.....")
case "web":
  print("full stack dudes and duddettes")
  //print("python 🐍 blah") // DRY - do not repeat yourself
  fallthrough // exectutes the following case
case "backend":
  print("python 🐍 is cool")
default:
  print("not part of Pursuit")
}


//====================================================
//                       Ranges
//====================================================

let ageRequirement = 18...35 // closed range includes all values
// 18 is the lowerBound and 35 is the upperBound

let halfRangeExample = 18..<35 // does NOT include 35

let decimalRange = 18.5...23.8


//====================================================
//            Switch Statement on Ranges
//====================================================

let classNumber = 6.3 // 2.3 from Coalition for Queens (C4Q) prior to changing to Pursuit

switch classNumber { // can switch on Bool, Int, Double, Character, String
case 0..<2: // half-open range, includes 0 and 1, NOT 2
  print("It's 2014 Coalition for Queens got founded. Now known as Pursuit, also Swift was announced that year at WWDC")
case 2..<3:
  print("It's 2015 and Objective-C is still the leading language to write iOS apps.")
case 3..<4:
  print("2016")
case 4..<5:
  print("2017")
case 5..<6:
  print("2018")
case 6..<7:
  print("It's 2019 and SwiftUI was introduced at WWDC in San Jose")
default:
  print("See you in 2020")
}


//====================================================
//                    Tuples
//====================================================

var coordinate = (40.7429595, -73.9441102)
coordinate.0
coordinate.1

var socials = (twitter: "@alexpaul", instagram: "@alexcpaul")
socials.twitter
socials.instagram


//====================================================
//            Switch Statement on Tuple
//====================================================

let kim = (age: 19, cohort: 6.1, passion: "music")
let heather = (age: 23, cohort: 6.4, passion: "immigration rights")
let nancy = (age: 34, cohort: 6.3, passion: "video games")

let currentFellow = nancy

switch currentFellow {
case(18..<21, _, _):
  print("not allowed to drink at events")
case(_, 6.3,_):
  print("iOS is awesome!!!!")
case(_, _, "video games"):
  print("see you at Pursuit's Game night, bring the drinks")
default:
  print("not a current a fellow")
}



// format for automatically indentation of code
// command + a, to select all code in Playground
// for formatting: control + i
