import UIKit

// sorting algorithms:
// slower: O(n ^ 2) - bubble sort, insertion sort
// faster: O(n log n) - merge sort, quicksort

// insertion sort
// runtime: O(n ^ 2)
// space: O(1) because sorts in place
// slighly more performant than bubble sort
// given a partially sorted and small sized array could be a good choice sorting algorithm

// swift's sorting algorithm (hybrib algorithm) is n log n, uses insertion sort on small, partially sorted arrays

// [4, 5, 9, -2]

func insertionSort(_ arr: inout [Int]) {
  guard arr.count >= 2 else { return }
  for current in 1..<arr.count {
    for j in (1...current).reversed() {
      if arr[j] < arr[j - 1] {
        // swap - using built-in swapAt
        arr.swapAt(j, j - 1)
      } else { // left side of array is sorted
        break // continue to outer loop
        //continue outerloop
      }
    }
  }
}

var list = [4, 5, 9, -2]
insertionSort(&list)
print(list)
