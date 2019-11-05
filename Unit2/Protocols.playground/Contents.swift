import UIKit

// Protocol: is a blueprint that list properties, methods or initializers that a (conforming type - could be an enum, a struct or a class)  is required to implement

protocol SomeProtocol {
  // properties
  var someString: String { get set }
  var someInt: Int { get }
  
  //init(age: Int)
  
  // methods
  func someMethod()
  mutating func someMutatingMethod()
}

// conforming object, conforms to SomeProtocol
// conform: enter agreement whereby this type
//          WILL implement all listed required properties, methods
//          and initializers
struct SomeStruct: SomeProtocol {
  var someString: String = ""
  
  var someInt: Int {
    return 10
  }
  
  func someMethod() {
    print("some method")
  }
  
  mutating func someMutatingMethod() {
    print("some mutating method")
  }
}
var someStruct = SomeStruct()
someStruct.someString = "message"


protocol Race {
  var type: String { get }
  var distance: Double { get }
  var name: String { set get }
  
  func info()
}

struct Marathon: Race {
  var type: String {
    return "Marathon"
  }
  var distance: Double { // is a get-only property, cannot mutate
    return 26.2
  }
  // attempt to use a setter to mutate distance
  // nycMarathon.distance = 13.1
  
  var name: String = "NYC Marathon" // both a setter and getter
  // setter
  // example nycMarathon.name = "TCS NYC Marathon"
  
  // getter
  // example print(nycMaraton.name) // TCS NYC Marathon
  
  var location: String = "New York City"
  
  func info() {
     print("The \(name) is a \(type) and it is \(distance) long.")
  }
}
var nycMarathon = Marathon(name: "TCS NYC Marathon")
nycMarathon.info()


// create a protocol and create a struct that conforms to that protocol, create an instance of the struct and test

protocol Human {
  var eat: String { get }
  var sleep: Int { get }
  var name: String { set get }
  func drink()
}

struct Kelby: Human {
  var name: String = "Kelby"
  var eat: String {
    return "food"
  }
  var sleep: Int {
    return 7 // hours
  }
  
  func drink() {
    print("My name is \(name), I eat \(eat), I sleep \(sleep) hours a night and I must drink water ")
  }
}

var kelby = Kelby()
kelby.drink()


protocol FullyNamed {
  var fullName: String { get }
}

struct Person: FullyNamed, CustomStringConvertible, Equatable {
  var age: Int
  var occupation: String
  var fullName: String { // get-only property
    return "John Appleseed"
  }
  var description: String {
    return "\(fullName) is \(age) years old and is a \(occupation)"
  }
}
var john = Person(age: 56, occupation: "Web Developer")
print(john)

var greg = Person(age: 19, occupation: "Ruby Developer")

if john == greg {
  print("It's the same person")
} else {
  print("different peopple")
}


// create a Movie struct, declare at least 2 properties in the Movie struct (name, genre), create 2 instances of Movie and conform to Equatable, test your solution, e.g movie1 == movie2 or movie1 != movie2

// code here
struct Movie: Equatable {
  var name: String
  var genre: String
  var rating: Double
}

var favMovie = Movie(name: "Coming to America", genre: "Comedy", rating: 9.9)
var secFavMovie = Movie(name: "Diary of a Mad Black Woman", genre: "Comedy", rating: 8.2)

if favMovie == secFavMovie {
  print("They are equal")
} else {
  print("They are not the same")
}

// create a Fellow struct, create 2 instances of Fellow, create the following properties (name: String, cohort: Double), then compare the Fellow instances to verify who is in the most recent cohort, first fellow instance should be 5.0 and second should be 6.0, e.g fellow1 > fellow2

// code here

struct Fellow: Comparable {
  
  // e.g mel < matt
  static func > (lhs: Fellow, rhs: Fellow) -> Bool {
    print("> got called")
    return lhs.cohort > rhs.cohort
  }
  
  static func < (lhs: Fellow, rhs: Fellow) -> Bool {
    print("< got called")
    return lhs.cohort < rhs.cohort
  }
  
  var name: String
  var cohort: Double
}

var mel = Fellow(name: "Mel", cohort: 5.0)
var matt = Fellow(name: "Matt", cohort: 6.0)
var eric = Fellow(name: "Eric", cohort: 6.0)

if mel < matt { // 5.0 < 6.0
  print("Mel is an alumn")
} else {
  print("Mel is in the current cohort")
}

if matt > mel { // 6.0 > 5.0
  print("Matt is in the current cohort")
} else {
  print("Matt is a graduate.")
}

if matt >= eric {
  print("They're in the same cohort")
} else {
  print("Not is the same cohort")
}


//===================================================
// Delegation
//===================================================

// Delegation is a design pattern in Swift that enables
// objectA notifications on objectB

// AnyObject restricts the GameDelegate protocol to ONLY
// classes
protocol GameDelegate: AnyObject {
  // all methods here are required
  func startGame()
  func endGame(score: Int)
}

class BlackJackGame {
  
  // weak break strong reference retain cycles
  // basically when two objects has a strong reference to each
  // other that creates a memory leak, more on that later
  weak var delegate: GameDelegate?
  
  func gameStatus() {
    let score = Int.random(in: 18...25)
    delegate?.endGame(score: score)
  }
}

// .e.g UITextFieldDelegate, UITableViewDelegate. UICollectionViewDelegate
class BlackJackViewController: UIViewController, GameDelegate {
  func startGame() {
    print("BlackJack game started.")
  }
  
  func endGame(score: Int) {
    switch score {
     case 21:
       print("BlackJack")
     case ...20:
       print("Keep playing \(score)")
     case 22...:
       print("Busted with a score of \(score)")
     default:
       print("score not available")
     }
  }
}

var blackJackGame = BlackJackGame()
var viewcontroller = BlackJackViewController()

// in order to get notifications from the BlackJackGame we need to set the delegate and assign the conforming class
blackJackGame.delegate = viewcontroller

// viewcontroller instance is registered as a delegate of blackJackGame to listen for changes on the game
blackJackGame.gameStatus()


