import UIKit

// binary search - implemented using recursion

// binary search - we use this searching algorithm to search for a
//                 given value

// runtime - O(log n) - as array is dividing on each pass

// array MUST be sorted
// array is divided in halves to find the middle index
// based on the current value at the middle index we
// either continue searching to the left of the middle index
// or
// continue searching for the value to the right of the middle index
// we use divide and conquer and implement the steps above
// until we find our value or do not find a value when steps
// have been exhausted

// implementing binary search using recursion
func binarySearch<T: Comparable>(_ arr: [T], searchKey: T, range: Range<Int>) -> Int? {
  
  // check to ensure that the upper bound is higher than the lower bound
  //if 5 > 0 return nil
  
  //[4, 5, 8]
  // lower bound 0
  // upper bound 2
  if range.lowerBound >= range.upperBound {
    return nil
  }
  
  // calculate middle index
  let middleIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
 
  // 3 checks
  // 1. is middle index value equal to search key (if it is we have found the search key)
  // 2. if the value at the middle index is greater than the search key, we will now look at the left side of the middle index
  // 3. if the value at the middel index is less than search value, we look look to the right
  
  // check 1
  if arr[middleIndex] == searchKey {
    return middleIndex
  }
  
  // check 2
  else if arr[middleIndex] > searchKey { // left side of middle index
    return binarySearch(arr, searchKey: searchKey, range: range.lowerBound..<middleIndex)
  }
  
  // check 3
  else if arr[middleIndex] < searchKey { // look at the right side of the middle index
    return binarySearch(arr, searchKey: searchKey, range: middleIndex + 1..<range.upperBound)
  }
  
  // did not find the value
  return nil
}


let sortedList = [-99, 2, 6, 9, 13, 34, 99, 101]

let index = binarySearch(sortedList, searchKey: -99, range: (0..<sortedList.count))

print("found index \(index ?? -999)")


let characters = ["a", "b" , "c", "y"]
let charIndex = binarySearch(characters, searchKey: "y", range: (0..<characters.count))
print("found char index: \(charIndex ?? -1)")




