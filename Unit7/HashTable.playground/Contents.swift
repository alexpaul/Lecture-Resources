import UIKit

//

var buckets = Array(repeating: 0, count: 2)

// hashValue is a built-in hash function
// returns a hash value for a key
// it's possible to get a negative number
// how can we fix this - take the absolute value of the operation
let alexIndex = abs("Alex".hashValue % buckets.count)
let brendonIndex = abs("Brendon".hashValue % buckets.count)
let ahadIndex = abs("Ahad".hashValue % buckets.count)
let tanyaIndex = abs("Tanya".hashValue % buckets.count)

print("goes in \(alexIndex) index")
print("goes in \(brendonIndex) index")
print("goes in \(ahadIndex) index")
print("goes in \(tanyaIndex) index")


var dict = [String: Int]()
dict["Sweden"] = 1


// Implemenet Hash Table

// e.g HashTable<String, Int>(capacity: 4)
struct HashTable <Key: Hashable, Value> {
  // (key, value) e.g "Tiffany": 21
  private typealias Element = (key: Key, value: Value)
  
  // collision resolution being implemented using chaining
  private typealias Bucket = [Element] // this represent the chains
  
  private var buckets: [Bucket]
  
  private (set) var count = 0 // getter is public, setter is private
  
  init(capacity: Int) {
    assert(capacity > 0) // crashes if not
    buckets = Array<Bucket>(repeating: [], count: capacity)
    // e.g buckets = [[], [], [(key: "Tiffany": 21)], []]
  }
  
  // method to return index where key will be stored
  func index(forKey key: Key) -> Int {
    return abs(key.hashValue % buckets.count)
  }
  
  // method to search for a value given a key
  func value(forKey key: Key) -> Value? {
    let index = self.index(forKey: key)
    for element in buckets[index] {
      if element.key == key {
        return element.value
      }
    }
    return nil
  }
  
  // method to update a value for a given key
  mutating func update(value: Value, forKey key: Key) -> Value? {
    let index = self.index(forKey: key)
    for (i, element) in buckets[index].enumerated() {
      if element.key == key {
        let oldValue = element.value
        // update the current value
        buckets[index][i].value = value
        return oldValue
      }
    }
    // we get here if there's no value
    buckets[index].append((key: key, value: value))
    count += 1
    return nil // to signify there wasn't an existing value
  }
  
  // method to remove an element at a given key
  mutating func removeValue(forKey key: Key) -> Value? {
    let index = self.index(forKey: key)
    for (i, element) in buckets[index].enumerated() {
      if element.key == key {
        buckets[index].remove(at: i)
        count -= 1
        return element.value
      }
    }
    return nil
  }
  
  // we can have multiple subscipt methods taking in varied arguments
  subscript(key: Key) -> Value? {
    get {
      return value(forKey: key)
    } set {
      if let value = newValue {
        update(value: value, forKey: key)
      } else {
        removeValue(forKey: key)
      }
    }
  }
}

// test the hash table

// key is String and the value is an Int and capacity is 4
var hashTable = HashTable<String, Int>(capacity: 4)

hashTable["Tiffany"] = 21
//hashTable.update(value: 21, forKey: "Tiffany")
hashTable.update(value: 25, forKey: "Eric")

hashTable.count

print(hashTable)

//hashTable.removeValue(forKey: "Tiffany")
hashTable["Tiffany"] = nil

print(hashTable.count) // 1

print(hashTable)

// optional binding
if let age = hashTable["Alex"] {
  print("\(age) exist")
} else {
  print("does not exist")
}

// nil coalescing
let age = hashTable["Cameron"] ?? 100
print(age)
