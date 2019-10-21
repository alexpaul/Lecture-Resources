import UIKit

// structs, classes and initialization

// differences between class and structs
/*
 - structs have a memberwise initializer, classes do not
 - classes have to provide an initializer if ANY of its properties do not have a default value
 - classes have inheritance and structs do not
 - due to the nature of the immuatability of a struct if you're in a function that modifies one of its properties that method needs to be explicitly marked "mutating" in classes this is not a fact because classes are passed by reference which makes it mutatable by default
 - classes have deinitializers and struct do not
*/

struct Fellow {
  // properties
  
  // type properties, class properties, static properties
  static let currentYear = 2019 // Fellow.currentYear
  // yulia.currentYear would be a compiler ERROR
  
  // instance properties
  var age: Int // e.g yulia.age but NOT Fellow.age
  var cohort: Double
  var currentlyEmployed: Bool // true or false

  
  // initializers if any
  
  // type methods, class methods, static methods
  static func programInfo() {
    print("This is a 10-month intensive program.")
  }
  
  // instance methods
  mutating func employed(isEmployed: Bool) { // true or false
    currentlyEmployed = isEmployed
  }
}



print(Int.max) // 9223372036854775807
// Int.max is known as accessing an (Type property)
// e.g .max ONLY works on ((type)) Int NOT an instance of Int

// instance of Int
let someInt = 0
//someInt.max // DOES NOT COMPILE BECAUSE AN INSTANCE OF INT CANNOT CALL TYPE PROPERTY

// making use of struct's memberwise initializer
var yulia = Fellow(age: 21, cohort: 6.3, currentlyEmployed: false)
if yulia.currentlyEmployed {
  print("When are you taking me out to lunch")
} else {
  print("Lunch is on me today")
}

// access a Type property
print("Pursuit fellows current year is \(Fellow.currentYear)")


// accessing a type method programInfo()
Fellow.programInfo

class Animal {
  var age: Int
  var breed: String
  var color: String = "white"
  init(age: Int, breed: String) {
    self.age = age
    self.breed = breed
  }
  
  // instance method
  func info() {
    print("The \(breed) is \(age) old and color is \(color)")
  }
}

// Dog is inheriting Animal
// subclass in Dog, parent class in Animal
class Dog: Animal {
  
}

// created an instance of Dog called frechBulldog
let frenchBulldog = Dog(age: 11, breed: "French Bulldog")
frenchBulldog.info()
