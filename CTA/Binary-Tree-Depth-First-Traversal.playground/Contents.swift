import UIKit

// Binary Tree - Depth-first traversals
// definition: at most can have 2 children

// Depth-first traversals
/*
 1. in-order
 2. pre-order
 3. post-order
*/

/*
                  1
                /   \
              2      3
            /   \   / \
          4      5 6   7
*/


// implement a binary tree node
class BinaryTreeNode<T> {
  var value: T
  var leftChild: BinaryTreeNode? // because optional has a value of nil
  var rightChild: BinaryTreeNode?
  init(_ value: T) {
    self.value = value
  }
}

extension BinaryTreeNode {
  // in-order traversal
  // rules:
  /*
   1. visit left child recursively
   2. visit current node
   3. visit right child recursively
  */
  func inOrderTraversal(visit: (BinaryTreeNode) -> ()) {
    leftChild?.inOrderTraversal(visit: visit)
    visit(self)
    rightChild?.inOrderTraversal(visit: visit)
  }
  
  // a closure caputures values (stores values for use a call time)
  func preOrderTraversal(visit: (BinaryTreeNode) -> ()) {
    visit(self)
    leftChild?.preOrderTraversal(visit: visit)
    rightChild?.preOrderTraversal(visit: visit)
  }
  
  func postOrderTraversal(visit: (BinaryTreeNode) -> ()) {
    leftChild?.postOrderTraversal(visit: visit)
    rightChild?.postOrderTraversal(visit: visit)
    visit(self) // we visit node last
  }
}

// create a tree
let treeNode = BinaryTreeNode<Int>(1)
let twoNode = BinaryTreeNode<Int>(2)
let threeNode = BinaryTreeNode<Int>(3)
let fourNode = BinaryTreeNode<Int>(4)
let fiveNode = BinaryTreeNode<Int>(5)
let sixNode = BinaryTreeNode<Int>(6)
let sevenNode = BinaryTreeNode<Int>(7)


treeNode.leftChild = twoNode
treeNode.rightChild = threeNode
twoNode.leftChild = fourNode
twoNode.rightChild = fiveNode
threeNode.leftChild = sixNode
threeNode.rightChild = sevenNode


// test in-order traversal
// expected output: 4 2 5 1 3
print("in-order traversal: ")
treeNode.inOrderTraversal { (node) in
  print(node.value, terminator: " ")
}

print("\n")

// test pre-order traversal
print("pre-order traversal")
treeNode.preOrderTraversal { (node) in
  print(node.value, terminator: " ") // 1 2 4 5 3 6 7
}

print("\n")


// test post-order traversal
print("post-order traversal")
treeNode.postOrderTraversal { (node) in // 4 5 2 6 7 3 1
  print(node.value, terminator: " ") // overrides the default "\n" terminator
}
