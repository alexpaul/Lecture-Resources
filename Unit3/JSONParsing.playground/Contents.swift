import UIKit

// New topics related to JSON parsing in Swift
/*
 - JSON - Web formatted data in Javascript formatting, root level object and be an array or a dictionary
 - Codable - swift type needs to conform to Codable in order to decode JSON to that object
 - do{...}catch{...} - is a block of code we are attempting to execute that can throw an error
   in the do{...} block is the code we are attempting to execute
   in the catch{...} block is the error if any, that was thrown
 - JSONDecoder() - is the swift class that does that actual decoding of the JSON data to our swift object, e.g here JSON -> the Person() object
*/

// Codable is an alias that encapsulates the (Decodable and Encodable) protocol
struct Person: Codable { // we need to conform to Codable in order to decode the JSON data
  let name: String
  let occupation: String
  let age: Int
  let latitude: Double
}

let jsonData = """
{
  "name": "Alex Paul",
  "occupation": "iOS Instructor",
  "age": 41,
  "latitude": 40.73
}
""".data(using: .utf8)!


// Person.self implies that the JSON root level object is a dictionary
// [Person].self implies that the JSON root level object is an array
do {
  let person = try JSONDecoder().decode(Person.self, from: jsonData)
  print("Person's name is \(person.name) and occupation is \(person.occupation)")
} catch {
  print("decoding error: \(error)")
}
