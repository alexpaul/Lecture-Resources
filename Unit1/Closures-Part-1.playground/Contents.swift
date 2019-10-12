import UIKit

// Closures: is a block of code that can be called in our program similar to a function. In fact a closure is a type of function. We will see and recognize differences as we journey through this course.

//=====================================================
//  function review
//=====================================================

// returns void
// internal parameter name are used in the function body
// definition
// external parameter name is used by the caller, they will see the external name e.g printGreeting(name: "Bob")

// default parameter value we will set on age is 21
// in the case the caller of our function does not
// provide age argument we will default to showing 21
// set default value on the data type that we are
// interested in, e.g age: Int = 21
func printGreeting(_ name: String, _ age: Int = 21) {
  // code
  print("Good morning \(name), welcome to iOS 6.3, your age is \(age)")
}

// call function
printGreeting("Alex")


for index in 0..<4 {
  print("Good Friday morning", terminator: "🥳") // default newline character for terminator"\n"
}

print()



//=====================================================
//  closure syntax
//=====================================================

/*
 { (paramerters) -> (return type) in
   // code here
 }
*/

// closures:
// - can be passed as function parameters
// - can be assigned into a variable or constant
// - can be returned from a function

// example closure 1
// greeting is a closure, does not have paramerters, does not return a value, returns Void (nothing)
let greeting = {
  print("Welcome to closures.")
}

greeting()

// closure that takes parameters and returns a value
let square = { (num: Int) -> (Int) in
  return num * num
}
print(square(10))

// refactoring square closure above to make use of
// shorthand closure syntax and shorthand argument names
// $0 is the first parameter, here we ONLY have one parameter, if you have e.g two parameters it would be $0 followed by $1 and so on
let squareShorthandSyntax: (Int) -> (Int) = { $0 * $0 }
print(squareShorthandSyntax(25)) // 25 * 25 = 625

// practice, create add, subtract, multiply and divide using shorthand closure syntax and argument names

// subtract trailing closure implicity return the value of the subtraction, return keyword is not needed
let subtractSyn: (Int, Int) -> (Int) = { $0 - $1 }
print(subtractSyn(5, 2))


//=====================================================
//        closures as function parameters
// closures are "first class citizen" meaning we can pass
// closures into functions as parameters similar as we do with variables in functions, we can also return a closure
//=====================================================

// the name of the closure could be anyname, here we are simply using the word "closure" but it could be "action", "myClosure"..........
func helloGreeting(closure: (String) -> ()) {//
  closure("Heather") // value was captured by the closure
  print("Hello iOS 6.3")
}

// calling a function that takes in a closure using trailing closure synax
helloGreeting { name in
  print("Hello, \(name) it's Friday 🚀")
}

func printClosure(action: () -> ()) {
  action()
}

// defined a closure named printingAction
// no paramerter, no return
let printingAction = {
  print("inside printCloser trailing closure")
}

// called our printClosure
printClosure(action: printingAction)


//=====================================================
//  use some built-in higher order functions (closures)
//  - map {....} - tranforms a value. e.g 4 * 4 = 16
//        returns an array of collection
//  - filter {....} - filters values based on a condition
//        return an array of collection
//  - reduce(0, +) - takes an initial value, e.g 0 and a
//    closure e.g + (addition) and combines all the values
//    and returns the result
//  - compactMap {....} - returns non-nil values
//  - sorted { > } - you provide a sorting closure and it
//         returns the collection sorted accordingly
//  - forEach {....} - similar to the for-in loop
//=====================================================

// given an array of integers return an array where each value is squared
// input: [1, 2, 3, 4, 5, 6]
// output: [1, 4, 9, 16, 25, 36]
let list1 = [1, 2, 3, 4, 5, 6]
func returnSquares(arr: [Int]) -> [Int] {
  var squares = [Int]()
  for num in arr {
    squares.append(num * num)
  }
  return squares
}
print(returnSquares(arr: list1)) // [1, 4, 9, 16, 25, 36]

//=====================================================
// using map
//=====================================================
let usingMapResults = list1.map { $0 * $0 }
print(usingMapResults)


//=====================================================
// using filter
//=====================================================
// given an array of fellows return only fellows where
// their names begin with "a" case-insensitive
// input = ["George", "Tom", "Ahad", "James", "Ameni"]
// output = ["Ahad", "Ameni"]
let list2 = ["George", "Tom", "Ahad", "James", "Ameni"]
let fiteredResults = list2.filter { $0.lowercased().hasPrefix("a") }
print(fiteredResults)


//=====================================================
// using reduce
//=====================================================
// given an array of integers return the sum
// input: [10, -10, 50, 20]
// output: 70
let list3 = [10, -10, 50, 20]
let reducedResults = list3.reduce(0, +)
print(reducedResults)


//=====================================================
// using compactMap
//=====================================================
// given an optional array of integers return ONLY valid
// integers
// input: [nil, 56, 12, -89, nil, nil, 0, 6]
// ouput: [56, 12, -89, 0, 6]
let list4 = [nil, 56, 12, -89, nil, nil, 0, 6]
let compactedResults = list4.compactMap { $0 }
print(compactedResults)
