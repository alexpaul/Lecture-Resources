import UIKit

// bubble sort
// sorting algorithm
// runtime: O(n ^ 2) - quadratic (considered as the worse sorting algorithm)
// space complexity: O(1) - constant - sorts in place
// sorts in place - inout function

func bubbleSort(_ arr: inout [Int]) { // inout indicates in place manipulation
  guard arr.count >= 2 else { return }
  for _ in 0..<arr.count { // O(n)
    for j in 1..<arr.count { // O(n)
      if arr[j] < arr[j - 1] {
        // swap
        // implement swap without using the built-in swap function
        let temp = arr[j] // saved the value at arr[j] before overwriting
        arr[j] = arr[j - 1]
        arr[j - 1] = temp
      }
    }
  }
}
var list = [10, 2, -8, 4]
bubbleSort(&list)
print(list)
