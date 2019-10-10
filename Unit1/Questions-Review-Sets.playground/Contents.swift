import Foundation


// Questions Review: Sets

// Questions Two
// Create a new array scoresThatAppearOnce that has all the elements from scores that appear exactly once.
// It should be in the same order as the original.
let scores = [1, 77, 83, 32, 77, 77, 83, 32, 99]

var scoresThatAppearOnce = [Int]()

// Your code here

var visitedScores: Set<Int> = []
for (_, score) in scores.enumerated() {
  if !visitedScores.contains(score) { // haven't seen this score
    visitedScores.insert(score)
    scoresThatAppearOnce.append(score)
  } else { // visited this value before, so it's not unique
    if let foundIndex = scoresThatAppearOnce.firstIndex(of: score) {
      scoresThatAppearOnce.remove(at: foundIndex)
    }
  }
}

// runtime efficiency of the algorithm
// contains on a Set in constant time O(1)
// contains on an Array is linear time O(n)

assert(scoresThatAppearOnce == [1, 99], "Was expecting [1, 99], but got \(scoresThatAppearOnce)")



// Question Five
// Determine if a String is a pangram. A pangram is a string that contains every letter of
// the alphabet at least once.
// e.g "The quick brown fox jumps over the lazy dog" is a pangram
// e.g "The quick brown fox jumped over the lazy dog" is NOT a pangram
let strOne = "The quick brown fox jumps over the lazy dog"
let strTwo = "The quick brown fox jumped over the lazy dog"
let strThree = "Sphinx of black quartz, judge my vow"

var strOneIsPangram: Bool = false
var strTwoIsPangram: Bool = false
var strThreeIsPangram: Bool = false

// Your code here

let alphabets: Set<Character> = Set("abcdefghijklmnopqrstuvwxyz")

var trimmedStr = ""
for char in strOne.lowercased() {
  if alphabets.contains(char) {
    trimmedStr += String(char)
  }
}

strOneIsPangram = Set(trimmedStr) == alphabets

assert(strOneIsPangram == true, "Was expecting true, but got \(strOneIsPangram)")
//assert(strTwoIsPangram == false, "Was expecting false, but got \(strTwoIsPangram)")
//assert(strThreeIsPangram == true, "Was expecting true, but got \(strThreeIsPangram)")
