import UIKit

func findMaxLenght(_ nums: [Int]) -> Int {
  var count = 0
  var maxLength = 0
  var freqDict = [Int: Int]() // [count: index]
  // if we have seen the count before we are looking at the contiguous subarray
  for (currentIndex, num) in nums.enumerated() {
    if num == 0 {
      count -= 1
    } else {
      count += 1
    }
    // keep track of seen counts and indices
    if let firstSeenIndex = freqDict[count] {
      maxLength = max(maxLength, currentIndex - firstSeenIndex)
    } else {
      freqDict[count] = currentIndex // first time we have seen this count
    }
  }
  return maxLength
}

findMaxLenght([0, 0, 1, 0, 1, 0]) // 4

// 9 = max(5, 9)
 
