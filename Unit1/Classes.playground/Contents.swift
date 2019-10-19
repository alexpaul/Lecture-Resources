import UIKit

// classes: building block that enable us to create complex "objects" in our program. Those objects are created using properties and methods.

//=======================================================
// class syntax
//=======================================================

class MyFirstClass {
  
}

// Day not has added functionality to count how many
// cases it has e.g here it is 3
// enum Day conforms (adds more functionality) to CaseIterable
enum Day: CaseIterable {
  case monday, tueday, wednesday
}
Day.allCases.count

//=======================================================
// inheritance - ONLY classes can inherit from other classes
//=======================================================

class Person {
  var name = "Jane Doe" // stored property
  var age = 21
  
  // instance methods
  func info() {
    print("This person name is \(name) and age is \(age)")
  }
}

// Fellow inherits from Person
// Fellow is a subclass of Person
// Person is the parent or superclass of Fellow
// In Swift we only have single inheritance, meaning you can ONLY
// inherit from one parent

// Object-oriented programming consists on those concepts:
// - inheritance
// - encapsulation: use private access modifiers on your properties and access them externally through methods
// - polymorphism - changing the form of an object

// The class Fellow inherits from the Person class above
class Fellow: Person {
  // DOES NOT COMPILE BECAUSE PARENT HAS THE SAME METHOD NAME
  // SO FELLOW NEEDS TO USE the override keyword
//  func info() {
//
//  }
  override func info() {
    print("\(name) is a fellow at Pursuit and is \(age) years old")
  }
}

class Employee: Person {
  // properties
  var position = "iOS developer"
  var salary = 85_000
  
  // instance methods
  override func info() {
    print("\(position) is making $\(salary)")
  }
}

// creating an instance of Fellow()
let brendon = Fellow()
brendon.name = "Brendon"
brendon.age = 31
brendon.info()

// before the Fellow class over rode info() method from the Person class this was the output from the print statement
// "This person name is Brendon and age is 31"

// after over ridding info() in the Fellow class the print statment comes from the overriden method
// "Brendon is a fellow at Pursuit and is 31 years old"


/* DOES NOT COMPILE - STRUCTS CANNOT INHERIT FROM OTHER STRUCTS
struct Artist { } - If Artist is a protocol then code will compile
struct PopStar: Artist { }
*/


//=======================================================
// polymorphism - changing form on an object
//=======================================================

// instance of a Person
let tom = Person()
tom.name = "Tom"

// instance of an Employee
let john = Employee()
john.name = "John"

// instance of a Fellow
let bienbenido = Fellow()
bienbenido.name = "Bienbenido"

// an array of instances from above
let people = [tom, john, bienbenido]

// if we were to loop over the people array what for example would be the info() message for bienbenido

for person in people {
  person.info()
}

//=======================================================
// struct are value-types - meaning assigning a new variable
//                          that new variable gets a copy of
//                          the original. Changing the copy
//                          does not change the original
//
// classes are reference types - multiple instances point to
//                        the same object meaning object b can
//                        mutate object a
//=======================================================

// creating an instance of Fellow() named anna
let anna = Fellow()
anna.name = "Anna"
print(anna.name) // Anna

// assinging luba the anna object
let luba = anna // both anna and luba are pointing to the same object
print(luba.name) // Anna

luba.name = "Luba"
print(luba.name) // Luba

// what is anna's name if printed
print(anna.name) // Luba

//=======================================================
// Swift provides a way to check for object equality of
// identity using ===
//=======================================================
if anna === luba { // ONLY available on classes
  print("both object are pointing to the same reference")
}


//=======================================================
// introduction to initializer in classes
//=======================================================

struct Dog {
  var breed: String
  var age: Int
}
// creating an instance of Dog using the memberwise initializer
// of the Dog struct, ONLY structs provide memberwise initialzers
var frenchBulldog = Dog(breed: "French Bulldog", age: 7)

// compiler error if class does not provide default values
// for ALL properties
class Game {
  // properties
  var name: String
  var noOfPlayers: Int
  
  // initializers
  init(name: String, noOfPlayers: Int) {
    self.name = name
    // basketball.name = "basketball"
    
    self.noOfPlayers = noOfPlayers // 5
    // basketball.noOfPlayers = 5
  }
  
  // instance method
  func info() {
    print("\(name) has \(noOfPlayers) players")
  }
}
// creating an instance of Game() called basketball
let basketball = Game(name: "Basketball", noOfPlayers: 5)
let football = Game(name: "Football", noOfPlayers: 11)

basketball.info()

// accessing properties
basketball.name = "NBA"

basketball.info()


//=======================================================
// creating instances from a dictionary
//=======================================================

class Playlist {
  // properties
  var name: String
  var trackCount: Int
  var description: String
  var isTop100: Bool
  
  // initializer
  init(name: String,
       trackCount: Int,
       description: String,
       isTop100: Bool){
    self.name = name
    self.trackCount = trackCount
    self.description = description
    self.isTop100 = isTop100
  }
  
  // instance method
  func info() {
    print("\(name) contains \(trackCount) tracks. \(description)")
    if isTop100 {
      print("\(name) is on the top 100 Spotify list")
    }
  }
}

let playlistDict: [String: Any] = ["name": "Best Pop Songs 2019",
                                   "trackCount": 128,
                                   "description": "Awesome playlist",
                                   "isTop100": true
]

// write a function that takes a dictionary of type [String: Any] and returns an optional Playlist?
func getPlaylist(dict: [String: Any]) -> Playlist {
  // accessing the name key in dict["name"]
  // used typecasting of Any type to String type using optional downcasting as?
  // used nil-coalescing to unwrap optional String? to String
  let name = dict["name"] as? String ?? "no name available"
  let trackCount = dict["trackCount"] as? Int ?? 0
  let description = dict["description"] as? String ?? "no description is availble"
  let isTop100 = dict["isTop100"] as? Bool ?? false
  let playlist = Playlist(name: name,
                          trackCount: trackCount,
                          description: description,
                          isTop100: isTop100)
  return playlist
}
// calling the getPlalist function which return a Playlist
let playlist = getPlaylist(dict: playlistDict)
playlist.info()


