import UIKit

// Questions review: enums

// Question Three
// You are given a Coin enumeration which describes different coin values.
// Write a function called getTotalValue(from:) that takes in an array
// of tuples of type (number: Int, coin: Coin), and returns the total value of all coins in cents.
enum Coin: Int {
  case penny = 1
  case nickle = 5
  case dime = 10
  case quarter = 25
}

// Your function here

func getTotalValue(from tuples: [(numberOfCoins: Int, typeOfCoin: Coin)]) -> Int {
  var totalNumberOfCents = 0
  for tuple in tuples {
    switch tuple.typeOfCoin {
    case .penny:
      totalNumberOfCents += Coin.penny.rawValue * tuple.numberOfCoins
    case .nickle:
      totalNumberOfCents += Coin.nickle.rawValue * tuple.numberOfCoins
    case .dime:
      totalNumberOfCents += Coin.dime.rawValue * tuple.numberOfCoins
    case .quarter:
      totalNumberOfCents += Coin.quarter.rawValue * tuple.numberOfCoins
    }
  }
  return totalNumberOfCents
}

// Uncomment the lines below to test your solution
 let coinArr: [(Int, Coin)] = [
   (10, .penny),
   (15, .nickle),
   (3, .quarter),
   (20, .penny),
   (3, .dime),
   (7, .quarter)
 ]
 let expectedTotal = 385
 let total = getTotalValue(from: coinArr)
 assert(total == expectedTotal, "Was expecting \(expectedTotal), but got \(total)")
