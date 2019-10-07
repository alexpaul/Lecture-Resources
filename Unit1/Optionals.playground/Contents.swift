import UIKit

// Optionals: is a type that represents two possibilities
//            either we have a value or we do not have a
//            value (nil).

// Swift data types support optionals e.g
/*
  String
*/

//===============================================
//              Introduction of Optionals
//===============================================

var name: String = "Alex"
print(name)

var age: Int? = 21 // optional Int? with default value of nil
print(age) // nil - doesn't have a value

var num = Int("It's Monday") // optional Int?


//===============================================
//              Ways to unwrap Optionals
//  1. Forced Unwrapping using an exclaimation mark !
//     or some programmers refer to it as banging !
//  2. Nil-coalescing using two question marks ?? followed
//     by a default value that we provide
//  3. Optional binding using if let, where a value is
//     assigned the existing if one is available.
//  4. Implicit unwrapping e.g var name: String!
//
//===============================================

//===============================================
//               Forced Unwrapping
//===============================================

let decadeFromNow = age! + 10 // Cannot add Int? + Int
print(decadeFromNow)

// to be used sparingly ONLY when you the developer is
// GUARANTEED a value at runtime


//===============================================
//                 Nil-Coalescing
//===============================================

var temperature: Int? = 75// degrees

let validTemperature = temperature ?? 67 // 67 is the default value in the case temperature is nil
print("Temperature is \(validTemperature)")


var cohort: Int?

var nextYearCohort = (cohort ?? -1)

if nextYearCohort == -1 {
  print("something went wrong with the application")
} else {
  print("everything went well")
}

print("Pursuit next cohort will be \(nextYearCohort)")


//===============================================
//               Optional binding: if let, while let
//===============================================

var wage: Int? = 40_000 // dollars
var year: Int? // nil by default if a value is not provided

// if let unwrappes the wage variable, if it does have a value then that value gets assigned to the bindedValue constant

// 1. wage within the if is still optional
// 2. not idiomatic swift (swifty)
if wage != nil {/*.......*/}

if 5 < 2 || 5 > 10 {
  print("in here")
} else {
  print("out here")
}
// validWage is 40000
// validYear is nil
if let validWage = wage,
  let validYear = year {
  // we only enter the if let block {.....}
  // if wage is NOT nil, in other words
  // ONLY if wage has a value
  
  // if wage has a value the if let is TRUE
  // if wage is nil the if let is FALSE
  print("You entered \(validWage) as your wage in the current year of \(validYear)")
} else { // else codition is false, or wage is nil
  print("Values are unavailable")
}

// string interpolation
var modelYear: Int?
print("model year is \(modelYear ?? 1959)")


//===============================================
//         testing optional for equality
//===============================================
 
var someValue: Int? = 7
if someValue == 7 {
  print("\(String(describing: someValue)) is equal to 7")
}


//===============================================
//         looping through and optional array
//===============================================
 
var numbers: [Int?]
numbers = [4, 9, nil, 10, 20, nil]

// add ONLY valid or non-nil integers
var sumUnwrappedUsingOptionalBinding = 0
var sumUsingNilCoalescing = 0
for currentNum in numbers {
  // optional binding to unwrap
  if let validNum = currentNum {
    sumUnwrappedUsingOptionalBinding += validNum
  }
  
  // using nil-coalescing
  sumUsingNilCoalescing += currentNum ?? 0
}
print("the sum of numbers using optional binding \(sumUnwrappedUsingOptionalBinding)")
print("the sum of numbers using nil-coalescing \(sumUsingNilCoalescing)")


var isAbscent: Bool? = false // Bool, Int, Double, Float...
if let unwrappedValue = isAbscent {
  print(unwrappedValue)
} else {
  print("isAbscent does not have a value")
}
