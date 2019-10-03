import UIKit

// Arrays - an array is an ordered collection of items

//===========================================
//           initializing arrays
//===========================================

// using Type Annotation we are declaring an
// array of type String
var bucketList: [String]

bucketList = ["France", "Austrailia", "South Africa", "Aruba", "Cozumel", "Brazil", "Japan"]

print(bucketList)

// count the items in the array
print("There are \(bucketList.count) countries on my bucket list")

var threeDoubles = Array(repeating: 0.0, count: 3)

print(threeDoubles) // [0.0, 0.0, 0.0]


//===========================================
//     accessing values inside an array
//===========================================

// tuples
var juan = (name: "Juan", cohort: 6.3, hobby: "gaming")
var shaniya = (name: "Shaniya", cohort: 6.3, hobby: "music yeah")
var fellows = [juan, shaniya]


// array of planets
// declaring an array using an array literal
var planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
var dwarfPlanets = ["Pluto"]

// accessing "Earth" planet using subscripting [2]
let thirdRockFromTheSun = planets[2]
print("Our home planet is \(thirdRockFromTheSun)")

let lastPlanet = planets[planets.count - 1]
print("the last planet in our solar system is \(lastPlanet)")

// print the second to the last planet
let secondToLastPlanet = planets[planets.count - 2]
print("second to last planet is \(secondToLastPlanet)")


// print the middle planet
// declare a variable middlePlanet and print out it's value
let middlePlanet = planets[planets.count / 2]
print("Our middle planet is \(middlePlanet)")


//===========================================
//   some properties and methods on arrays
//===========================================

// property - a variable on an object e.g planets.count
// method - a function that runs on an instance of an object e.g planets.append(:_)

// first
// if planets.first is NOT nil assign the value to the firstPlanet constant
//

// think about planets.first as being a condition of true or false where if first does not exist the condition is false, if first exist then the condition is true

// however long term we will come to realize that planets.first implies that either we have a valid value of String or not in the case that it's nil i.e planets array is empty

// here we are using optional binding to unwrap the first? value

// BOTH WAYS OF DECLARING THE ARRAY BELOW ARE VALID

// USING TYPE ANNOTATION
//var programmingLanguages: [String] = []

// USING TYPE INFERENCE
var programmingLanguages = [String]()


// using isEmpty property on an array
// isEmpty is preferable over using .count
if programmingLanguages.isEmpty {
  print("we need to start progrmming")
} else {
  print("programming is fundamental")
}

if programmingLanguages.count == 0 {
  print("what are you waiting for????")
}

//===========================================
//     append to an array - add to an array
//===========================================

programmingLanguages.append("Swift")

if let firstProgrammingLanguage = programmingLanguages.first {
  // if we have a valid value of String
  // we enter this if block {.....}
  print("first programming language is \(firstProgrammingLanguage)")
} else {
  print("looks like you haven't started using any programming languages")
}



//===========================================
//     remove(at:) - removing items from an array
//===========================================

print("there are \(planets.count) planets")

planets.append("Pluto")

print("there are \(planets.count) planets")

print(planets) // 9 planets

let removedPlanet = planets.remove(at: planets.count - 1) // 9 - 1 = 8

print("looks like \(removedPlanet) was ditched again 😞")

print("there are \(planets.count) planets")

//===========================================
//     remove all elements in an array
//     using removeAll()
//===========================================
//planets.removeAll() // 0 planets

print("there are \(planets.count) planets in the solar system")

let randomPlanet = planets.randomElement() ?? "PlanetX" // using nil-coelescing ?? we default to a value of "Earth"
print("random planet is \(randomPlanet)")

// popLast()

//planets.removeAll()

let oopsAnotherPlanetIsGone = planets.popLast() ?? "Ameni's Planet"

print("another planet was gone \(oopsAnotherPlanetIsGone)")


//===========================================
//            modifying arrays
//===========================================
var classRoom1 = ["Maigrett", "Gregg", "Adam"]
var classRoom2 = ["Aaron", "Jack", "Vic"]

// adding or concatenating arrays together
// NOTE: when adding arrays together they need to be of the same data type


// DOES NOT COMPILE, CANNOT ADD DIFFERENT ARRAY TYPES TOGETHER
//classRoom1 += [56, 56]

classRoom1 += classRoom2

print("class room 1 has \(classRoom1.count) of fellows")


//===========================================
//   iterating or looping through arrays
//===========================================
// method 1: interating through array using for-in loop without using an index

planets.append("Neptune")

for planet in planets {
  print("Planet is \(planet)")
}

// method 2: interating using enumerated() to gain access to the current index in the for-in loop
for (index, planet) in planets.enumerated() {
  print("\(planet) \(index + 1)")
}

// method 3: using a range
for index in 0..<planets.count {
  print(planets[index])
}




// compile-time errors
// runtime-errors
