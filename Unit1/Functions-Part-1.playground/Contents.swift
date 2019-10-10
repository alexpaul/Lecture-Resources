import UIKit

// Functions: a block of code that enables us to call it anywhere in our project or file

/*
 Vocabulary
 - function - a block of code
 - argument
 - parameters, internal, external
 - input
 - output
 - function definition - description of the function
 - calling a function or invoking a function, execute function
*/

//===============================================
//         function syntax
//===============================================

// function definition
func myFirstFunction() { // no parameters
  print("Happy hump day 🐫")
}

// call or invoke or execute our myFirstFunction
myFirstFunction() // no arguments

// number is an external parameter name
// x is an internal parameter name
// Int is the data type of the function's input
// Int is also the output of this function
// return type syntax is ->
func doubleNumber(number x: Int) -> Int {
  let result = x * 2
  return result
}

let resultOfCalculation = doubleNumber(number: 10) // function takes one argument of type Int, output returned is of type Int
print(resultOfCalculation)


// write a function that adds two a number, then triples it
// input: 10
// output: 36
// (10 + 2) * 3

func tripleNumber(num: Int) -> Int {
  return (num + 2) * 3
}

tripleNumber(num: 10)


for index in 1..<4 {
  print(tripleNumber(num: index))
}

// write a function that adds an exclaimation mark ! to a String
// input: Ameni
// output: Ameni!

func addExclaimationMark(str: String) -> String{
  let modifiedString = str + "!"
  return modifiedString // Tiffany += !
}

let name = "Ameni"
print(addExclaimationMark(str: name)) // Ameni!

//===============================================
//      optional types on functions
//===============================================

func githubProfile(age: Int?, employmentStatus: Bool?) -> Bool? {
  var profileComplete: Bool? // nil
  if let unwrappedAge = age,
    let unwrappedEmploymentStatus = employmentStatus {
    print("\(unwrappedAge), \(unwrappedEmploymentStatus)")
    profileComplete = true
  }
  return profileComplete // true or nil
}

print(githubProfile(age: 56, employmentStatus: false))

if let profileComplete = githubProfile(age: 20, employmentStatus: true) {
  print("Profile complete \(profileComplete)")
} else {
  print("Profile incomplete.")
}
