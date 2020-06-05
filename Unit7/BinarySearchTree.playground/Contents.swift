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


// write a function that takes a tree and a given value
// and delete the value and returns the modified tree

func delete(_ root: TreeNode?, _ targetValue: Int) -> TreeNode? {
  guard let _ = root else {
    return nil
  }
  
  // we need to modify root so we will make it mutable
  var root = root
  
  // check the target value to find out if we are looking
  // left or right
  if targetValue < root!.value { // left
    root?.left = delete(root?.left, targetValue)
  } else if targetValue > root!.value { // right
    root?.right = delete(root?.right, targetValue)
  } else { // we've found the node to be deleted
    // scenario 1: no children
    if root?.right == nil && root?.left == nil {
      root = nil
      return root
    }
    
    // scenario 2: one child
    else if root?.left == nil {
      root = root?.right
    }
    else if root?.right == nil {
      root = root?.left
    }
    else {
        // scenario 3: both children
        // steps to delete a node where it has both children
        // 1. get minimum value of right subtree
        let tempNode = minimum(root?.right)
        
        // 2. replace value at root with minimum value
        
        root?.value = tempNode!.value
        
        // 3. delete minimum value
        root?.right = delete(root?.right, tempNode!.value)
    }
  }
  return root // represents the modified tree after deletion
}

// helper function to find the minimum value (node)
// of a binary search tree
func minimum(_ root: TreeNode?) -> TreeNode? {
  var currentNode = root
  while let next = currentNode?.left {
    currentNode = next
  }
  return currentNode
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
rootNode.insert(3)
rootNode.insert(11)
rootNode.insert(15)
rootNode.insert(13)
rootNode.insert(21)
rootNode.insert(40)
rootNode.insert(50)
rootNode.insert(35)
rootNode.insert(65)


// if using in-order traversal, the print order of the elements
// is guaranteed to be ascending...
rootNode.inOrderTraversal() // 5 12 32 -> binary search tree
print()

delete(rootNode, 32) // scenario 3: both children

rootNode.inOrderTraversal()
print()

delete(rootNode, 50) // scenario 2: one child
rootNode.inOrderTraversal()
print()

delete(rootNode, 65) // scenario 1: no children
rootNode.inOrderTraversal()

