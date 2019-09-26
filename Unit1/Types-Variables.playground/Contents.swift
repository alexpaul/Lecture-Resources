import UIKit

var str = "Hello, playground"

// - comment

// Data Types: String, Int (Integer)

//==============================================
//                String
//==============================================


// declared a variable fellowName of type String
// Type Inference: implicit declaration of a variable I
var fellowName = "David Lin"


// Type Annotation - explicity writing the data type using : (colon)
var cohort: String = "iOS 6.3"

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

futureAge

// String interpolation is embedding a variable into a String using \(variable name) syntax as seen below
print("Age of fellow 8 years from now is \(futureAge)")


//==============================================
//                   Double
//==============================================

var balance = 100005.9

// re-assign balance a new value of 85000
balance = balance + 85000

print(balance)


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
