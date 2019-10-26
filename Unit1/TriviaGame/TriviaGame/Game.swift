//
//  Game.swift
//  TriviaGame
//
//  Created by Alex Paul on 10/21/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Game {
  
  // MARK: Properties of Game
  
  // a questions array property [Question]
  // instance property
  var questions = [Question]()
  
  // a score property
  var score = 0 // stored property
  
  // keep track of total questions given to user
  var totalQuestions = 0 // stored property
  
  // computed property, instance property
  // e.g game.hasMoreQuestions, return true or false
  var hasMoreQuestions: Bool {
    // accessors available in Swift are
    // getters and setters
    // using the not ! symbol to negate or toggle the current value
    return !questions.isEmpty
  }

  
  // MARK: Methods of Game
  // write a method to get a shuffled question
  func getQuestion() -> Question? {
    // shuffle the array
    questions = questions.shuffled()
    // popLast removes the last element and returns it
    return questions.popLast()
  }
  
  
  // 2. write a method to start the Game, this method
  //    creates the array of questions [Question]
  // e.g start(.movieType) or start(triviaType: .movieType)
  func createQuestions(_ triviaType: TriviaType) {
    // step 1 - loop through the array (TriviaData.data)
    for dict in Trivia.data {
      // step 2 - using key triviaType in the dictionary
      // we need to access the value
      if let unwrappedTrivia = dict["triviaType"] as? String {
        // step 3 - compare the user's triviaType
        // with the current triva type in the dictionary
        if unwrappedTrivia == triviaType.rawValue {
          // step 4 - create a Question and append to
          // the questions array
          
          // step 5 - unwrap Question and add to array
          if let question = Question(dict: dict) {
            questions.append(question)
          }
        }
      }
    }
    totalQuestions = questions.count
  }
  
  
  // method to check if the answer is correct
  //    and increment the score by 1 
  func checkAnswer(usersAnswer: String, question: Question) {
    if usersAnswer == question.correctAnswer {
      // increment the score by 1
      score += 1
      print("Correct Answer.\n\(question.fact)")
    } else {
      print("Wrong answer. Answer is \(question.correctAnswer)\n\(question.fact)")
    }
  }
  
  // Write a method that prints out the final score and total number of questions.
  func finalScore() {
    print("Your final score is \(score) out of \(totalQuestions)")
  }
  
  // Write a method that resets the game if the player wishes to continue
  func reset() {
    score = 0
    //questions = [Question]()
    questions.removeAll()
  }
  
  // revisit function parameter names
  // there is external paramter name
  // internal parameter name
  func selectTrivia(_ userResponse: String) { // "1"..."4"
    switch userResponse {
    case "1":
      createQuestions(.movieTrivia)
    case "2":
      createQuestions(.sportsTrivia)
    case "3":
      createQuestions(.musicTrivia)
    case "4":
      createQuestions(.nycTrivia)
    case "5":
      createQuestions(.secondGradeMath)
    default:
      print("Trivia type is unavailable")
    }
  }
  
  func questionsInfo() {
    if questions.isEmpty {
      print("Last question.\n")
    } else {
      print("There are \(questions.count + 1) questions left.\n")
    }
  }
  
}
