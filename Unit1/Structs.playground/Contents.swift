import UIKit

// structs: is a building block of a method in which we emulate an "object" in Swift

// struct syntax

// SomeStruct below defines an "object"
// Object-oriented programming (OOP) - encapsulates properties and methods of real world objects
struct SomeStruct {
  // definition of the struct includes the following:
  // properties - variables or constants on the type (struct)
  // initializers - the method in which you create a type
  // methods - function inside of a custom type (struct)
}

struct Resolution {
  // properties
  // stored properites - a property with a default value
  // a property is a variable or constant
  var width = 0
  var height = 0
}

//===============================================
// create an instance of Resolution struct
//===============================================

var someResolution = Resolution()

// accessing properties of Resolution using dot syntax
someResolution.width = 1080

print(someResolution)

// structs have a ((memberwise initializer)) as opposed to
// a class that does not
var vga = Resolution(width: 640, height: 480)
print(vga)

//===============================================
// structs and enums are *****value types*****
//===============================================

let hd = Resolution(width: 1920, height: 1080)

var cinema = hd // cinema gets a **copy** of hd
// ****COPY DOES NOT CHANGE THE ORIGINAL OBJECT****

// what is the value of cinema's here // 1920
print(cinema.width) // 1920

cinema.width = 2048

// what is the value of hd's width????
print(hd.width) // 1920

//====================================================
// using object-oriented programming to model a Fellow
//====================================================

enum ProgrammingLanguage {
  case swift
  case objectivec
  case java
  case javascript
  case python
  case noLanguage
}

struct Project {
  var projectName = ""
  var projectDescription = ""
  var language = ProgrammingLanguage.noLanguage
}

enum Cohort {
  case iOS
  case android
  case web
  case dataScience
}

struct Fellow {
  //==========================================
  // properties - variable and constants
  //==========================================
  var name = "John Appleseed" // stored properties
  var cohort = Cohort.iOS // iOS, android, web, dataScience
  var programmingLanguages = [ProgrammingLanguage]()
  var githubURL = ""
  var linkedInURL = ""
  var hasProgrammingBackground = false
  var projects = [Project]() // projects
  
  //==========================================
  // initializers
  //==========================================
  
  //==========================================
  // methods
  //==========================================
  
  // class methods
  
  
  // instance methods
  // can ONLY be called using instanceName.info()
  // or e.g gregg.info()
  func info() {
    print("\(name) currently has \(projects.count) portfolio project(s)")
  }
  
  func resume(language: ProgrammingLanguage) {
    // self represents the instance of Fellow that called
    // resume() e.g gregg.resume(language: .swift)
    if self.programmingLanguages.contains(language) {
      print("\(name) can be hired for this \(language) position.")
    } else {
      print("\(name) is not qualified for this position.")
    }
  }
  
}

// creating instances of "objects"

// creating an instance using the default initializer of Fellow()
var gregg = Fellow()
gregg.name = "Gregg"
gregg.cohort = .iOS
gregg.projects.append(Project(projectName: "Hangman", projectDescription: "Hangman command-line macOS application", language: .swift))
gregg.info()
// Fellow.info() DOES NOT COMPILE NOT A CLASS METHOD


// created an instance of Fellow called oscar and used the memberwise initializer
var oscar = Fellow(name: "Oscar", cohort: .iOS, programmingLanguages: [.swift], githubURL: "https://github.com", linkedInURL: "https://linkedIn.com", hasProgrammingBackground: false, projects: [Project]())
oscar.info()

// intances of Project
let calculatorApp = Project(projectName: "Calculator", projectDescription: "Calculator command-line application", language: .swift)
let instagramClone = Project(projectName: "Instagram Clone", projectDescription: "Best photo sharing social app", language: .java)

// add projects to oscar's portfolio
oscar.projects.append(calculatorApp)
oscar.projects.append(instagramClone)

oscar.info() // 2 projects

oscar.resume(language: .javascript)

oscar.resume(language: .swift) // 🥳
