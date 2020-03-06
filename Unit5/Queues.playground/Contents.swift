import UIKit

// Queues: is a abstract data type that is a FIFO structure (meaning: first object added is the first object to be removed from the data structure)

// methods of a Queue:

// enqueue: add item to the back of the queue

// dequeue: remove item from the front of the queue

// properties: count, isEmpty, peek

struct Queue<T> {
  // implementing a queue using an array
  private var elements = [T]()
  // private var linkedList = LinkedList<T>()
  // private var stack = [Int]()
  
  public var isEmpty: Bool {
    return elements.isEmpty
  }
  
  public var count: Int {
    return elements.count
  }
  
  // returns the items at the front of the queue, doen not
  // remove it
  public var peek: T? {
    return elements.first
  }
  
  // add item to elements
  public mutating func enqueue(_ item: T) {
    elements.append(item)
  }
  
  // remove item from front of elements array
  public mutating func dequeue() -> T? {
    guard !isEmpty else { return nil }
    return elements.removeFirst()
  }
}

var queue = Queue<String>()
queue.enqueue("Mel")
queue.enqueue("Kelby")
queue.enqueue("Oscar")

print("\(queue.peek ?? "") is at the front of the line")

queue.dequeue()

print("fellows left in line are \(queue)")

queue.enqueue("Eric")

print("there are \(queue.count) fellows on line")

// iterate through a queue structure

var queueCopy = queue

while let value = queueCopy.dequeue() {
  print("fellow: \(value)")
}

print("there are \(queueCopy.count) fellows left in queueCopy")

