import UIKit

// helper method to help while testing different methods below
func example(_ str: String, action: () -> ()) { // "testing append"
  print(str)
  action()
  print()
}

// singly linked node
class SLNode {
  var next: DLNode?
  var value: Int
  init(_ value: Int) {
    self.value = value
  }
}

class SinglyLinkedList {
  private var head: SLNode?
  private var tail: SLNode?
  
  func append() {
    
  }
}

// implement (Doubly Linked Node) class
class DLNode { // hint: conform to Equatable
  var next: DLNode?
  weak var previous: DLNode?
  var value: Int
  init(_ value: Int) {
    self.value = value
  }
}

// implement (Doubly Linked List) class

class DoublyLinkedList {
  private (set) var head: DLNode?
  private (set) var tail: DLNode?
  
  func append(_ value: Int) {
    // 1
    // create a new node
    let newNode = DLNode(value)
    
    // 2
    // guard against tail being nil i.e (list being empty)
    guard let lastNode = tail else {
      // 3
      // append to empty list
      head = newNode
      tail = newNode
      return
    }
    // list has values
    // 4
    lastNode.next = newNode
    // 5
    newNode.previous = lastNode
    // 6
    tail = newNode
  }
  
  func printForward() { // 5 -> 1 -> 10 -> nil
    var currentNode = head
    while let node = currentNode {
      print(node.value, terminator: " -> ")
      currentNode = node.next
    }
    print("nil")
  }
  
  func printReverse() { // 10 -> 1 -> 5 -> nil
    var currentNode = tail
    while let node = currentNode {
      print(node.value, terminator: " -> ")
      currentNode = node.previous
    }
    print("nil")
  }
  
  // TODO: 1
  // prepend - add a node to the front of the list
  // existing list: 10 -> 7 -> 5 -> nil
  // add value 8
  // new list should be: 8 -> 10 -> 7 -> 5 -> nil
  
  // TODO: 2
  // delete head
  // exiting list: 8 -> 10 -> 7 -> 5 -> nil
  // deleteHead()
  // new list: 10 -> 7 -> 5 -> nil
  
  
  // TODO: 3
  // delete tail
  // exiting list: 8 -> 10 -> 7 -> 5 -> nil
  // new list: 8 -> 10 -> 7 -> nil
  
  // TODO: 4
  // insert value after node
  // exiting list: 8 -> 10 -> 7 -> 5 -> nil
  // insert(list.head.next, 3)
  // new list: 8 -> 10 -> 3 -> 7 -> 5 -> nil
  func insertNode(_ node: DLNode, value: Int) {}
  
  // TODO: 5
  // delete node at index
  // exiting list: 8 -> 10 -> 7 -> 5 -> nil
  // delete(atIndex: 0)
  // new list: 10 -> 7 -> 5 -> nil
}

let list = DoublyLinkedList()

example("testing append") {
  list.append(10)
  list.append(7)
  list.append(5)
  list.printForward() // 10 -> 7 -> 5 -> nil
}

example("print reverse") {
  list.printReverse()
}

example("insert after") {
  list.insertNode(list.head!.next!, value: 3)
}
