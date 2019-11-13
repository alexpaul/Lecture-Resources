import UIKit

//====================================================
// Lecture Video: https://youtu.be/b9AvLEFihFw
//====================================================

// Big O Notation: calculating the performanc of a given algorithm

// Big O has two performance metrics:
// 1. time complexity
// 2. space complexity


// fastest to slowest runtimes (time complexity)
// O(1), O(log n), O(n), O(n log n), O(n ^ 2), O(2 ^ n), O(n!)



//====================================================
// O(1) - constant time
//====================================================
func printFirstElement(arr: [String]) {
  guard let first = arr.first else {
    return
  }
  print(first)
}
printFirstElement(arr: ["Greg", "Matt"])


let fellows = ["Mel", "Yulia", "Stephanie"]

// what is the runtime of the line below?
fellows[2] // O(1)

let firstTwoFellows = fellows.prefix(10) // O(1)
print(firstTwoFellows)

let numbers: Set = [1, 2, 3, 4]
numbers.contains(3) // O(1)



//====================================================
// O(log n) - logorithmic time
// on every iteration the the problem increments
// or decrements by double the current value
//====================================================
let n = 16
var j = 1
while j < n {
  j *= 2 // 2, 4, 8, 16
}




//====================================================
// O(n) - linear time
//====================================================

// n represents the number of elements in the collection
for fellow in fellows { // O(n) => O(3)
  print(fellow)
}

var count = 0
while count < 10 {
  print(count)
  count += 1
}



//====================================================
// O(n log n), e.g .sorted(), mergeSort, quickSort
//====================================================

for _ in 0..<10 { // O(n) => 10
  var j = 1
  while j < n { // O(log n) => 4
    j *= 2 // 2, 4, 8, 16
  }
}

//====================================================
// O(n ^ 2) - quadratic
//====================================================

let list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
for i in 0..<list.count { // O(n) => 10
  for j in 0..<list.count { // O(n) => 10
    print("\(list[i])  * \(list[j]) = \(list[i] * list[j])")
  }
}



//====================================================
// deriving compound runtimes
//====================================================
func compoundRuntimes(arr: [Int]) {
  for _ in 0..<1000 {
    print("Hi!")
  }
  for num in arr {
    print(num)
  }
  for (indexOne,numOne) in arr.enumerated() { // O(n)
    for (indexTwo, numTwo) in arr.enumerated() { //O(n)
      if indexOne != indexTwo && numOne == numTwo {
        print("It's a match! \(numOne) and \(numTwo) are equal")
      }
    }
  }
}
// solution: O(n)


