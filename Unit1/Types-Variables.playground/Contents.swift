import Foundation

var str = "Hello, playground"

// - comment
// Data Types: String, Int (Integer)
//==============================================
//                String
//==============================================

// declared a variable fellowName of type String
// Type Inference: implicit declaration of a variable I
var fellowName = "David Lin"

print(fellowName) // David Lin

fellowName = "Chelsi Christmas"

print(fellowName) // Chelsi Christmas

fellowName = "34"


// DOES NOT COMPILE - CANNOT ADD DIFFERENT DATA TYPES
//let newString = "34" + 12

// concatenation - adding together
let fullName = "Alex" + " Paul" // Alex Paul

var fallCycle = "iOS 6.3"

// using String Interpolation we are printing fullName's description
print(fullName + "is the iOS Instructor for \(fallCycle)")

// Type Annotation - explicity writing the data type using : (colon)
var cohort: String = "iOS 6.3"

let lowercaseName = "alex"
let uppercaseName = "Alex"

let stringResult = lowercaseName == uppercaseName

let alphabeticalOrder = "Kelyby" < "Lorraine"
print("alphabeticalOrder result \(alphabeticalOrder)")

//==============================================
//                Character
//==============================================
var alphabet: Character = "c"

// mutating cohort
// var is mutable - meaning can be changed
cohort = "iOS 7.3"


//==============================================
//                   Int
//==============================================
// declared variable age and initialized value to 32
var ageOfFellow = 32

var futureAge = ageOfFellow + 8

// String interpolation is embedding a variable into a String using \(variable name) syntax as seen below
print("Age of fellow 8 years from now is \(futureAge)")

// integer division truncates decimals (removes them)
let integerDivison = 16 / 3
print("integer division is \(integerDivison)")


//==============================================
//                   Division by 0
//==============================================
// 89 / 0 DOES NOT COMPILE


//==============================================
//                   Double
//==============================================
var balance = 100005.9

// re-assign balance a new value of 85000
balance = balance + 85000

print(balance)


// floating point division keeps decimals
//let floatingPointDivison = 16.0 / 3.0 (also valid to keep decimal points)
let floatingPointDivison: Double = 16 / 3
print("floating point division is \(floatingPointDivison)")


//==============================================
//                Float vs Double
// Float holds 32-bit vs 64-bit of a Double
//==============================================
let floatNum: Float = 67.990776788943
let doubleNum = 67.990776788943
print("float is \(floatNum) and double is \(doubleNum)")

// DOES NOT COMPILE - CANNOT ADD A FLOAT WITH A DOUBLE
//let accountBalance = floatNum + doubleNum

// here we are casting (converting) a Float to a Double
let accountBalance = Double(floatNum) + doubleNum
print("account balance is now \(accountBalance)")



//==============================================
//                   Short hand arithmetic
//==============================================
balance -= 180000

print(balance)



//==============================================
//                   Boolean - Bool, Comparison Operators
//==============================================
var result = 70 < 100

print(result)

var otherResult = result && true

print(otherResult)


-5 > -2 && 3 >= -5

//==============================================
//          Arithmetic operators
//==============================================
//==============================================
// THIS DOES NOT COMPILE - let is immuatable - constant
//==============================================
//let salary = 20000
//salary *= 2
//print(salary)
var salary = 20000
salary *= 2
// this line above is the same as (salary = salary * 2)
print(salary)


var marathonTime = 6 // 6 hours
marathonTime /= 2
print(marathonTime) // 3

//==============================================
//      Modulo operator or Remainder operator
//==============================================
var modResult = 16 % 3
print(modResult)

var even = 12 % 6
print(even)


//==============================================
//                Constants
//==============================================
let pi = 3.14

