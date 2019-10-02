import Foundation

var str = "Hello, playground"

print(str)
print(str)
print(str)
print(str)
print(str)

//=================================================
//             range - close range and half range
//=================================================

let closeRange = 1...10 // inclusive or close range
let halfRange = 1..<10 // exclusive or half close range


//=========================================
//             for in loop
//=========================================
for num in 1...10 { // inclusively prints 1 to 10
  // print() default terminator is "\n"
  // the new line character
   // default parameter is "\n" replace with " "
  if num > 9 {
    print(num, terminator: "")
  } else {
    print(num, terminator: "💀")
  }
}

print()


//===================================================
//             preview using loops with arrays
//===================================================
// array of String's
let pursuitStacks = ["iOS", "web", "android"]
for pursuitClass in pursuitStacks {
  // printing using String Interpolation
  print("Pursuit class is \(pursuitClass)")
}

let fellows = ["Tiffany", "Yulia", "Joshua", "Maitree"]
for fellow in fellows {
  if fellow == "Joshua" {
    print("\(fellow) is awesome!")
  } else {
    print("\(fellow) is awesome too 👏🏾")
  }
}

let temperatures = [69, 75, 87, 64, 64, 61, 68, 100]
for temp in temperatures {
  switch temp {
  case 87...: // include 87 and greater
    print("Catch me at the beach 🏖")
  default:
    print("Just another day")
  }
}

let message = "Happy Monday iOS 6.3"
// question: use a for loop to print the message variabnle 5 times
for _ in 0..<5 { // ... is inclusive, ..< exclusive
  // fist time it is 0
  // next time it is 1
  // next time it is 2
  // next time it is 3
  // next time is is 4
  print(message)
}


//=========================================
//         control transfer statement
//           where, break, continue
//=========================================
// Question: use where to print ONLY numbers ending in 5 inclusively

// where
for number in 1...100 where number % 10 == 5 {
  print("\(number)'s last digit is 5")
}

// break - exit loop or end loop, stop looping
for num in 1...10 {
  if num == 7 {
    print("Happy birthday, Miles 🎈")
    break // exit loop, stop seaching, stop looping
  } else {
    print("Not your birthday yet, you're only \(num) years old")
  }
}

// continue
for num in 1...10 {
  if num % 2 == 0 { // even numbers
    // increment (add)
    // increment to next value
    // e.g if current value is 2
    // 2 mod (modulo operator - remainder) 2 or 2 % 2 is 0 s
    // next value is
    continue // to the next value
  }
  print(num)
}


//=========================================
//            while loop
//=========================================
var seconds = 30
while seconds >= 0 { // -1 is not greater or equal to 0
  if seconds == 0 {
    print("🚀")
  } else {
    print("countdown \(seconds)....")
  }
  // while conditon NEEDS a way to stop the loop
  // or it will run infinetely (forever) until your
  // playground explodes hahahaaaa runs out of resource
  
  // without decrementing seconds the while loop
  // will be in what's known as an (infinite loop)
  seconds -= 1 // 29, 28, 27, -1 decrementing seconds by 1
}




