import UIKit

// Sets: an unordered collection whose elements are unique

//====================================================
//       initializing and populating a set
//====================================================

// protocols: Hashable, Sequence, Collection

var accountNumbers: Set<Int> = [] // use type annotation
var accountNumbers2 = Set<Int>() // use set initialization

var accountNumbers3: Set<Int> = [37198473, 94275942789, 95727589278] // using a literal collection

// heterogeneous array
var mixedArr: [Any] = [45253, "Tiff", false]
for element in mixedArr {
  if let num = element as? Int { // typecasting - optional downcasting as?, forced downcasting as!
    print("num is \(num)")
  }
  if let str = element as? String {
    print("string is \(str)")
  }
  if let bool = element as? Bool {
    print("bool value is \(bool)")
  }
}


//====================================================
//             accessing values in a set
//====================================================

// isEmpty
if accountNumbers.isEmpty {
  print("accountNumbers is empty")
}

// count
print("There are \(accountNumbers3.count) elements in accountNumbers3")

// converting array to a set
// removes any duplicates from the array since elements in a set has to be unique
let colors = Set(["blue", "white", "red", "yellow", "white"])
print(colors)


//====================================================
//       using contains to find an element in a set
//====================================================

var fellows: Set<String> = ["Christian", "Gregg", "Maitree", "Joshua"]

for fellow in fellows {
  print(fellow)
}

if fellows.contains("Christian") {
  print("found fellow")
}


//====================================================
//        removing and inserting in a set
//====================================================

let inserted = fellows.insert("Nancy")
// returns a tuple indicating value insert status
// (inserted: true, memberAfterInsert: "Nancy")

print(inserted)
fellows.insert("Paul")

print(fellows)
// ["Christian", "Joshua", "Gregg", "Nancy", "Maitree", "Paul"]

fellows.remove("Paul")
print(fellows)
// ["Joshua", "Nancy", "Christian", "Gregg", "Maitree"]


//====================================================
//        performing set operations
//====================================================

let a: Set<Int> = [1, 2, 3, 4, 5, 6]
let b: Set<Int> = [5, 6, 7, 8]

// intersection
let intersection = a.intersection(b).sorted() // ascending is the default order of sorted()
print(intersection) // [5,6]

// symmetricDifference
let symmetricDifference = a.symmetricDifference(b).sorted()
print(symmetricDifference) // [1, 2, 3, 4, 7, 8]

// union
let union = a.union(b).sorted()
print(union) // [1, 2, 3, 4, 5, 6, 7, 8]

// subtracting
let subtracting = a.subtracting(b).sorted()
print(subtracting)


let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true
