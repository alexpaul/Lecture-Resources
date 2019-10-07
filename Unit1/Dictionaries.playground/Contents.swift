import UIKit

// Dictionary: a collection of key-value pairs,
//             the key needs to conform the the Hashable
//             protocol, this simply means the key needs
//             to be made unique by a hashing algorithm.
//             Dictionaries are unordered collections.

let name = "alex"
let hashValue = name.hashValue
print("hash value of \(name) is \(hashValue)")

//================================================
//  initializing and populating dictionaries
//================================================

// method 1: uses the initialization method
// declared and initialized an empty dictionary
// key is of type Int
// value is of type String
var nameOfIntegers = [Int: String]()

// count number of elements in nameOfIntegers
// count is a property on the Collection Protocol
// dictionary, arrays and sets conform to Collection
// a property is a variable or constant on a type
print("there are \(nameOfIntegers.count) elements currently in the nameOfIntegers dictionary")

// assign a key-value (element) pair to nameOfIntegers
nameOfIntegers[16] = "sixteen"

print(nameOfIntegers)

print("there are \(nameOfIntegers.count) elements now")

// practice - add a differenct key-value pair to nameOfIntegers
nameOfIntegers[7] = "seven"

print(nameOfIntegers)

// can we index the first element using [0]

// the code below says find me the value where the key is 0
let num = nameOfIntegers[0] ?? "zero" // because our key is an Int
print("num is \(num)")


// method 2:
//var airports: [String: String] = [:] - valid, empty dictionary
var airports: [String: String] // = ["Copenhagen": "CPH"]
airports = ["Copenhagen": "CPH",
                                  "Los Angeles": "LAX", "Saint Luica": "LCU"]

print("there are \(airports.count) airports currently")


//================================================
//           accessing dictionary values
//================================================

// we also have an isEmpty property on dictioary
if airports.isEmpty {
  print("airports is empty")
} else {
  print("there are \(airports.count) airports")
}

//================================================
//          looping through a dictionary
//================================================
let bucketLists: [String: String] = ["Sweden": "Stockholm", "Austrailia": "Cairnes", "Mexico": "Cozumel", "New Zealand": "Wellington", "Morrocco": "Cassablanca"]

for (country, place) in bucketLists {
  print("I want to visit \(place) located in \(country)")
}

let destination = bucketLists["New Zealand"] ?? "unknown destination"
print("your next destination is \(destination)")


let favoriteAlbums = ["John Mayer": "Room for Squares", "Post Mallone": "Stoney", "Tupac": "All Eyez on Me", "Drake": "Take care", "Teyana": "K.t.s.e"]

// given album name, find the artist
// using a for-in loop to search for a given value
var artistName = "NOT FOUND"
for (currentArtist, albumName) in favoriteAlbums {
  if albumName == "Stoney" {
    artistName = currentArtist
  }
}
print("\(artistName) created the Stoney album")


// get values from a dictionary
// extracting all the values from the favoriteAlbums dictionary
let albums = Array(favoriteAlbums.values)
for album in albums {
  print("album is \(album)")
}

// get keys from a dictionary
let artists = Array(favoriteAlbums.keys)
for artist in artists {
  print("artist is \(artist)")
}

// dictionaries are unsorted so we will demo how to
// sort the values and print in a sorted manner
// question: given albums, sort by artist name
// sorted() by default is ascending, means a - z
// descending is z - a
for artistName in favoriteAlbums.keys.sorted().reversed() {
  print("artist name sorted is \(artistName)")
}
