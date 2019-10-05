import Foundation

// Arrays Part 2

//====================================================
//                  array review
//====================================================


var musicalArtists = ["Bob Marley",
"Burning Spear", "Steel Pulse", "Mos Def", "The Beatles",
"Norah Jones", "John Mayer", "Lauryn Hill"]

let artist = musicalArtists[2]
print("currently playing \(artist) on Spotify")


//====================================================
//                    array slice
//====================================================

// array slice
// a view of the array
let reggaeStars = musicalArtists[1...3]
print("Some Reggae superstars are \(reggaeStars)")


//====================================================
//                modifying an element
//====================================================


// modify the value of an array using subscripting
musicalArtists[1] += " (The Reggae Legend)"
print(musicalArtists)

// replace an element using subscript
musicalArtists[musicalArtists.count - 1] = "Prince"

print(musicalArtists)

for artist in musicalArtists {
  if artist == "John Mayer" {
    print("Acoustic genius")
    break // ends the loop
  }
  print("searching for John Mayer......")
}

// tuple review
let artist1 = (name: "John Mayer", genre: "Pop")
let artist2 = (name: "Beyonce", genre: "Pop, Country, Hip-Hop, Soca, Afro-beat")
let artitsts = [artist1, artist2]

for artist in artitsts {
  print("artist name is \(artist.name)")
}

//====================================================
//                multi-dimensional arrays
//====================================================

let matrix = [[1, 2, 3],
              [4, 5, 6],
              [7, 8, 9]]

let exampleArr = ["Brendon", "Eddie"]

// print out the size of the multi-dimensional array
print("current count is \(matrix.count)")

// using a for-in loop print out the elements of the matrix

// matrix is an array - also a multi-dimensional array
for arr in matrix {
  
  // each element in the matrix is an array
  for num in arr { // e.g first time ran => 1, 2, 3
    print(num, terminator: " ")
  }
  print()
}

// using subscripting on a multi-dimensional array
let firstInnerArray = matrix[0]
print("first element in matrix array is \(firstInnerArray)")

// print out last element

// count of matrix is 3
// how to find last index in matrix array
// count - 1 => 2
// matrix[2] // don't hard code!!!!
let lastInnerArray = matrix[matrix.count - 1]// hard coding matrix[2]
print("the last element in matrix array is \(lastInnerArray)")
