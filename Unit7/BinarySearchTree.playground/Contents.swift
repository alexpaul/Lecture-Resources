import UIKit

class TreeNode {
  var left: TreeNode?
  var right: TreeNode?
  var value: Int
  init(_ value: Int) {
    self.value = value
  }
}

extension TreeNode {
  func insert(_ newValue: Int) {
    if newValue < value { // go left if newValue is greater than current node's value
      if left != nil {
        // keep calling insert recursively on left node
        left!.insert(newValue)
      } else {
        // create a new node and attach as left child
        left = TreeNode(newValue)
      }
    } else { // go right
      if right != nil {
        // call insert recursively on right child
        right!.insert(newValue)
      } else {
        right = TreeNode(newValue)
      }
    }
  }
  
  // search logic
  /*
   1. check current node to verify if target value
   2. if target value is less than current node value then search left
   3. else search right
  */
  
  func contains(_ targetValue: Int) -> Bool {
    // 1. check current node to verify if target value
    if targetValue == value { // equal to current node value
      return true
    }
    // 2. if target value is less than current node value then search left
    if targetValue < value { // search left
      if left != nil {
        // call contains recursively on left child
        return left!.contains(targetValue)
      } else {
        return false
      }
    } else { // search right
      if right != nil {
        // visit recursively
        return right!.contains(targetValue)
      } else {
        return false
      }
    }
  }
  
  func inOrderTraversal() {
    left?.inOrderTraversal() // vist left
    print("\(value)", terminator: " ") // visit current node
    right?.inOrderTraversal() // visit right
  }
}

/*
        12
      /    \
     5     32
*/


// 5 12 32


let rootNode = TreeNode(12)
rootNode.insert(5)
rootNode.insert(32)

rootNode.inOrderTraversal() // 5 12 32

rootNode.contains(5) // true

rootNode.contains(-5) // false
