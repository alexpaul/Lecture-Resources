import UIKit

// Quick Sort implementation using Lomuto's Partitioning algorithm
// Quick Sort uses a pivot in our example we use the last element (Lomuto's Partitioning) as the pivot
// Using this pivot we split the array to the left of the pivot and to the right of the pivot
// example 10, -9, 0, -11, (pivot is 13) , 80
// Quick Sort uses divide and conquer approach to solve the sorting algorithm, divide and conquer is spliting the problem in half on every interation (or recursive call)
// runtime: O(n log n)

// implement Lomoto's partitioning

// return new index which we will use as the pivot to partition
// the array into a left and right side array
func lomutoPartition(_ arr: inout [Int], low: Int, high: Int) -> Int {
  let pivot = arr[high] // using last element in array
  var i = low
  
  // iterate through the array using j variable as our marker
  for j in low..<high {
    if arr[j] <= pivot {
      // swap and increment i
      arr.swapAt(i, j)
      i += 1
    }
  }
  arr.swapAt(i, high)
  return i
}

func quicksortLomuto(_ arr: inout [Int], low: Int, high: Int) {
  if low < high {
    // get a new pivot
    let pivot = lomutoPartition(&arr, low: low, high: high)
    
    // recusive calls
    // left array
    quicksortLomuto(&arr, low: low, high: pivot - 1)
    
    // right array
    quicksortLomuto(&arr, low: pivot + 1, high: high)
  }
}

var list = [80, 10, -9, 0, -11, 13, 80, 10, -9, 0, -11, 13, 80, 10, -9, 0, -11, 13, 78, -100]
quicksortLomuto(&list, low: 0, high: list.count - 1)
print(list)



// bubble sort - worst sorting algorithms
func bubbleSort(_ arr: inout [Int]) {
  for _ in 0..<arr.count { // n
    for j in 1..<arr.count { // n => O(n ^ 2)
      if arr[j] < arr[j - 1] {
        arr.swapAt(j, j - 1)
      }
    }
  }
}
var bubbleList = [80, 10, -9, 0, -11, 13, 80, 10, -9, 0, -11, 13, 80, 10, -9, 0, -11, 13, 78, -100]
bubbleSort(&bubbleList)
print(bubbleList)
