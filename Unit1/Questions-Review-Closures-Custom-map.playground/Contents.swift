import UIKit

// Question review from Closures lab

// Question Four
// Write a function called sortedNamesByLastName(in:) that takes in an array of tuples
// of type (String, String) and returns an array of tuples sorted by last name.


// Your function here

// input of our function: unsorted last name array of tuples
// output of our function: sorted by last name array of tuples

func sortedNamesByLastName(in names: [(String, String)]) -> [(String, String)] {
  let result = names.sorted { name1, name2 in
    // < means ascending, or a....z
    // > means descending, or z....a
    name1.1 < name2.1
  }
  return result
}

// Uncomment out the following lines to check your solution
 let firstAndLastTuples = [
     ("Johann S.", "Bach"),
     ("Claudio", "Monteverdi"),
     ("Duke", "Ellington"),
     ("W. A.", "Mozart"),
     ("Nicolai","Rimsky-Korsakov"),
     ("Scott","Joplin"),
     ("Josquin","Des Prez")
 ]
 let expectedOutputFour = [
     ("Johann S.", "Bach"),
     ("Josquin","Des Prez"),
     ("Duke", "Ellington"),
     ("Scott","Joplin"),
     ("Claudio", "Monteverdi"),
     ("W. A.", "Mozart"),
     ("Nicolai","Rimsky-Korsakov")
 ]

print(sortedNamesByLastName(in: firstAndLastTuples))


let outputFour = sortedNamesByLastName(in: firstAndLastTuples)
assert(outputFour.elementsEqual(expectedOutputFour, by: { $0 == $1 }), "Expected output to be \(expectedOutputFour), but found \(outputFour)")


let arr = [4, 5, 1, -7, -99, 56, 23]
// return an array where elements are less than 5
// output [-99, -7, 1, 4]

// using sorted() which does not take any arguments
print(arr.filter { $0 < 5 }.sorted())

let filteredArr = arr.filter { $0 < 5 }
print(filteredArr) // [4, 1, -7, -99]

let sortedArr = filteredArr.sorted

// sorted using closure which takes 2 arguments
let names = ["Alex", "Tiffany", "Antonio", "Genesis"]
// > descending z...->a and < ascending from a....->z
let sortedNamesUsingClosure = names.sorted { $0 > $1 }
print(sortedNamesUsingClosure)


// given an array of names return all the names uppercased
// input: ["Alex", "Tiffany", "Antonio", "Genesis"]
// output: ["ALEX", "TIFFANY", "ANTONIO", "GENESIS"]
// use map, filter or reduce to solve exercise
let sortedNamesUsingMap = names.map { $0.uppercased()}
print(sortedNamesUsingMap)


// re-creating the built-in map function
// map function will take 2 paramters,
// first parameter is an array on ints
// second parameter is a closure
func customMap(arr: [Int], closure: (Int) -> Int) -> [Int] {
  var transformedArr = [Int]()
  
  for num in arr {
    // perform transformation based on closure and append result in
    // transformedArr
    transformedArr.append(closure(num))
  }
  
  return transformedArr
}

// using customMap function above take in an array of numbers and return
// the squared values of each of those elements
// input: [1, 2, 3, 4, 5, 6, 7]
// output: [1, 4, 9, 16, 25, 36, 49]

let numberArray = [1, 2, 3, 4, 5, 6, 7]
let squaredNumberArray = customMap(arr: numberArray) { number in
  number * number
}
print(squaredNumberArray)
