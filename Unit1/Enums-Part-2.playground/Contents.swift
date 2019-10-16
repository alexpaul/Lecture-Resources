import UIKit

// enums part 2

//====================================================
// associated values - adds more value (types) to a case
//====================================================

enum MTALine {
  case redLine(Int)
  case greenLine(Int)
  case purpleLine
  case blueLine
  case orangeLine
  case brownLine
  case yellowLine(trainName: Character, startTime: Int, endTime: Int)
  case grayLine
}

// 1. add an associated value for greenLine of type Int use 4, 5 or 6 to create a new instance of a constant named fiveTrain
// using our trainInformation() pass in the fiveTrain instance, add a new case in the switch statement for .greenLine

// instantiating a train using the MTALine
// 3 instances of MTALine below, namely rTrain, oneTrain and fiveTrain
let rTrain = MTALine.yellowLine(trainName: "R", startTime: 8, endTime: 12)
let oneTrain = MTALine.redLine(1)
let fiveTrain = MTALine.greenLine(5)

func trainInformation(train: MTALine) {
  switch train {
  case .greenLine(let trainName):
    print("You're on the \(trainName) train, maybe stop at Bowling Green and take a city walk.")
  case .redLine:
    print("The 1, 2, 3 tains are running on time.")
  case .yellowLine(let trainName, let sTime, let eTime):
    print("\(trainName) train runs from \(sTime)am to \(eTime)am")
  default:
    print("All trains are running normally.")
  }
}
trainInformation(train: rTrain)
trainInformation(train: oneTrain)
trainInformation(train: fiveTrain)

//==========================================================
// declaring methods inside enums
//==========================================================

enum ProgrammingLanguage {
  case swift
  case python
  case objectivec
  case go
  case r
  case java
  case javascript
    
  // functions in custom types are called methods
  func info() {
    // we need to switch on an instance of ProgrammingLanguage
    switch self { // self if the instance that calls info()
    case .objectivec:
      print("Last major update was in 2014")
    case .swift:
      print("Swift was introduced in 2014")
    case .java:
      print("Java is used to build android apps, also heavily used on Wall Street.")
    default:
      print("All languages are fun!!!!!")
    }
  }
  
  func salaryInfo() {
    switch self {
    case .swift:
      print("$1 million starting salary")
    default:
      print("Wasting your time")
    }
  }
}

// swiftLanguage is an instance of ProgammingLanguage
let swiftLanguage = ProgrammingLanguage.swift
swiftLanguage.info()

swiftLanguage.salaryInfo()

// create a ProgrmmaingLanguage instance that's not swift and call .salaryInfo() method
let javaLanguage = ProgrammingLanguage.java
javaLanguage.salaryInfo()


//==========================================================
// raw values
//==========================================================

enum Day: Int {
  case monday = 1 // default is 0 if value not supplied
  case tuesday
  case wednesday
  case thursday
  case friday
  case saturday
  case sunday
}

enum Fellow {
  case cohortCycle
}

// print(Fellow.cohortCycle.rawValue) DOES NOT COMPILE NO RAWVALUE PROVIDED

print(Day.monday.rawValue) // default starting case of an Int rawValue is 0

print(Day.tuesday.rawValue)

//==========================================================
// initializing an instance of an enum with a rawValue
//==========================================================

// nil-coalescing to unwrap optional enum rawValue type
let weekend = Day(rawValue: 10) ?? Day.saturday
print(weekend)

// optional-binding to unwrap optional enum
if let possibleDayOff = Day(rawValue: 6) {
  switch possibleDayOff {
  case .saturday:
    print("Great day for a BBQ")
  case .sunday:
    print("Really want to go swimming today 🏖")
  default:
    print("Just another day")
  }
} else {
  print("Not a valid day of the week.")
}


