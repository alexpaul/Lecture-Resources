//
//  main.swift
//  ReadLineDemo
//
//  Created by Alex Paul on 9/27/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//


import Foundation

// Objective:
// Use ReadLine() to get input from the user

print("Enter how many days you will swim, bike or run this week?")
var numberOfDays = Int(readLine() ?? "") ?? -1

var workoutCount = numberOfDays
print() // creates a new line

/*
  repeat {
    // execute code
  } while (condition is true)
*/

repeat { // repeat-while loop
  if numberOfDays == 0 {
    break // exits the loop
  } else if numberOfDays == -1 {
    break
  }
  
  if numberOfDays < 0 || numberOfDays > 7 {
    numberOfDays = -2
    workoutCount = numberOfDays
    break
  }
  
  print("enter the type of workout, swim, bike or run: ")
  let workout = readLine()?.lowercased()
  print() // creates a new line
  
  switch workout {
  case "swim":
    print("swim \(Int.random(in: 1...100)) lengths of the pool")
  case "bike":
    print("bike \(Int.random(in: 1...100)) loops around Central Park")
  case "run":
    print("run \(Int.random(in: 1...100)) laps around the track")
  default:
    print("no such workout")
  }

  numberOfDays -= 1 // decrementing e.g 5 days, 4...3...2...1...0 => while loop condition is met
  print() // creates space betwen lines
} while numberOfDays > 0

switch workoutCount {
case -2:
  print("invalid number of days entered")
case -1:
  print("bad data was entered")
case 1..<5:
  print("Good job this week")
case 5...:
  print("YOU'RE A ROCKSTAR 🏊🏾‍♂️ 🚵🏾‍♂️ 🏃🏾‍♂️ 🔥🔥🔥🔥🔥🔥🔥🔥🔥")
default:
  print("Slacker you can do better......")
}

// command + b => only builds and checks for errors
// command + r => builds and runs the application
