import UIKit

// Objectives
/*
 - inout function
 - generics, generic function
 - stack: using a generic type
*/

// inout function allow us to change variables outside
// the scope of a function
// *****in-place means our function should be an inout function****
func swapTwoInts(int1: inout Int, int2: inout Int) {
  let temp = int1 // saved the value of int1 to avoid overriden it
  int1 = int2
  int2 = temp
}

var num1 = 4
var num2 = 13

print("values of ints before swap is \(num1) \(num2)")
swapTwoInts(int1: &num1, int2: &num2)
print("values of ints after swap is \(num1) \(num2)")

func swapTwoStrings() {
  
}

func swapTwoFellows() {
  
}

// generic function
func swapTwoValues<T>(value1: inout T, value2: inout T) {
  let temp = value1
  value1 = value2
  value2 = temp
}

var name1 = "Alex"
var name2 = "Paul"

print("values of swap before \(name1) \(name2)")
swapTwoValues(value1: &name1, value2: &name2)
print("values of swap after \(name1) \(name2)")


// Any is not type-safe
// Generic enforces type-safety

var arr: [Any] = [45, 7, 0, true, 90.8]
arr.append("fellow")



// implement a Generic Stack using an array

struct IntStack {
  private var elements = [Int]()
}

// generic type
struct Stack<T> {
  private var elements = [T]() // works with any type
  
  public var peek: T? {
    return elements.last
  }
  
  public mutating func push(item: T) {
    elements.append(item)
  }
  
  public mutating func pop() -> T? {
    guard !elements.isEmpty else {
      return nil
    }
    return elements.removeLast()
  }
}

var cohorts = Stack<Double>()
cohorts.push(item: 1.0)
cohorts.push(item: 2.0)
cohorts.push(item: 3.0)
cohorts.push(item: 4.0)
cohorts.push(item: 5.0)
cohorts.push(item: 6.3)

print(cohorts.peek) // 6.3

cohorts.pop()
cohorts.pop()
cohorts.pop()
cohorts.pop()
cohorts.pop()
cohorts.pop()
cohorts.pop()
cohorts.pop()
cohorts.pop()
cohorts.pop()


print(cohorts.peek) // 4.0


struct Fellow {
  let name: String
  let language: String
  let isEmployed: Bool
}

let ameni = Fellow(name: "Ameni", language: "Swift", isEmployed: true)
let tom = Fellow(name: "Tom", language: "Kotlin", isEmployed: false)

var fellows = Stack<Fellow>()
fellows.push(item: tom)
print(fellows) // ["Tom"]

