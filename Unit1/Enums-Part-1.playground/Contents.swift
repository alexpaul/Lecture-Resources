import UIKit

// enumerations or enums: a group of related value or items
//              e.g days of the week, mta train lines, number of fingers,
//              compass points

// enum keyword starts the enum definition
// followed by the name of the enum, which should start with a capital letter to keep with Swift coding convention, also this signifies that the enum is a data type to the reader of your code
enum CompassPoint {
  case north
  case south
  case east
  case west
}

// exercise: create an enum of days of the week
enum DaysOfTheWeek {
  case monday
  case tuesday
  case wednesday
  case thursday
  case friday
  case saturday
  case sunday
}

enum Planet {
  case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

//==============================================================
// using a switch statement we will switch on an enum instance
//==============================================================

// instance of a String
let name = "Bob"

// creating an instance of the enum DayOfTheWeek
let day = DaysOfTheWeek.tuesday
var weekend = DaysOfTheWeek.saturday
weekend = .sunday
// var someDay = .friday DOES NOT COMPILE, CAN'T INFER TYPE IS ENUM

switch day {
case DaysOfTheWeek.monday:
  print("Back to Pursuit")
case DaysOfTheWeek.tuesday:
  print("Enums lab is due")
case .wednesday:
  print("Professional skills")
case .thursday:
  print("Introuduction to classes")
case .friday:
  print("Classes and Calculator labs are due")
case .saturday:
  print("What should I do today")
case .sunday:
  print("Maybe I should do some prep work for class tomorrow?")
//default: // will never be executed as all cases are handled above
//  print()
}

//==============================================================
// Iterating through an enum's cases
//==============================================================

// Beverages enum is conforming to the protocol CaseIterable
// by conforming to CaseIterable we are able to get a count
// of all the cases in an enum
enum Beverage: CaseIterable {
  case coffee, tea, juice
}

print("There are \(Beverage.allCases.count) beverages")

for drink in Beverage.allCases {
  print("current beverage is \(drink)")
}
