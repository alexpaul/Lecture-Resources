import UIKit

// KVO - Key-value observing

// KVO is part of the observer pattern
// NotifcationCenter is also an observer pattern
// NotificationCenter.postNofication(name: "API ready")

// KVO is a one-to many pattern relationship as opposed to delegation which is a one-to-one

// In the delegation pattern
// class ViewController: UIViewController {}
// eg. tableView.dataSource = self

// KVO is an Objective-C runtime API
// Along with KVO being an objective-c runtime some essentials are required
// 1. The object being observed needs to be a class
// 2. The class needs to inherit from NSObject, NSObject is the top abstract class in Objective-C. The class also needs to be marked @objc
// 3. Any property being marked for observation needs to be prefixed with @objc dynamic. dynamic means that the property is being dynamically dispatched (at runtime the compiler verifies the underlying property)
// In swift types are statically dispatched which means they are checked at compile time vs Objective-C which is dynamiclly dispatched and checked at runtime.

// Static vs dynamic dispatch
// https://medium.com/flawless-app-stories/static-vs-dynamic-dispatch-in-swift-a-decisive-choice-cece1e872d

// Dog class (class being observed) - will have a property to be observed
@objc class Dog: NSObject { // Dog is KVO-compliant
  var name: String
  @objc dynamic var age: Int // age is a observable property
  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
}


// Observer class one
class DogWalker { // class ViewController1
  let dog: Dog
  var birthdayObservation: NSKeyValueObservation? // a handle for the property being observed i.e age property on Dog
  // similart to ListenerRegistration in Firebase
  // e.g listenerRegistration: ListenerRegistration?
  
  var nameObservation: NSKeyValueObservation?
  
  init(dog: Dog) {
    self.dog = dog
    configureBirthdayObservation()
  }
  
  private func configureNameObservation() {}
  
  private func configureBirthdayObservation() {
    // \.age is keyPath syntax for KVO observing
    birthdayObservation = dog.observe(\.age, options: [.old, .new], changeHandler: { (dog, change) in
      // update UI accordingly if in a ViewController class
      // oldValue e.g 5 (if 5 gets incremented by 1 new value will be 6)
      // newValue e.g 6
      guard let age = change.newValue else { return }
      print("Hey \(dog.name), happy \(age) birthday from the dog walker")
      print("dogWalker: oldValue is \(change.oldValue ?? 0)")
      print("dogWalker: newValue is \(change.newValue ?? 0)\n")
    })
  }
}


// Observer class two
class DogGroomer { // class ViewController2
  let dog: Dog
  var birthdayObservation: NSKeyValueObservation?
  
  init(dog: Dog) {
    self.dog = dog
    configureBirthdayObservation()
  }
  
  private func configureBirthdayObservation() {
    birthdayObservation = dog.observe(\.age, options: [.old, .new], changeHandler: { (dog, change) in
      
      // unwrap the newValue property on change as it's optional
      guard let age = change.newValue else { return }
      print("Hey \(dog.name), happy \(age) birthday from the dog groomer.")
      print("groomer oldValue: \(change.oldValue ?? 0)")
      print("groomer newValue: \(change.newValue ?? 0)\n")
    })
  }
}

// test out KVO observing on the .age property of Dog
// both classes (DogWalker and DogGroomer should get .age changes)

let snoopy = Dog(name: "Snoopy", age: 5)
let dogWalker = DogWalker(dog: snoopy) // both dogWalker and dogGroomer have a reference to snoopy
let dogGroomer = DogGroomer(dog: snoopy)

snoopy.age += 1 // increment from 5 to 6

