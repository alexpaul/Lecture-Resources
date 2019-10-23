//
//  Question.swift
//  TriviaGame
//
//  Created by Alex Paul on 10/21/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

struct Question { // this should be a struct
  private var questionPrompt: String
  private var correctAnswer: String
  private var choices: String
  private var fact: String
  private var triviaType: TriviaType // movieTrivia, musicTrivia, sportsTrivia, nycTrivia
  
  // designated initializer
  init(questionPrompt: String,
       correctAnswer: String,
       choices: String,
       fact: String,
       triviaType: TriviaType) {
    self.questionPrompt = questionPrompt
    self.correctAnswer = correctAnswer
    self.choices = choices
    self.fact = fact
    self.triviaType = triviaType
  }
  
  // failable convenience initializer that
  // takes in a dictionary of type [String: Any]
  init?(dict: [String: Any]) {
    guard let questionPrompt = dict["question"] as? String,
      let correctAnswer = dict["correctAnswer"] as? String,
      let choices = dict["choices"] as? String,
      let fact = dict["fact"] as? String,
      let triviaType = dict["triviaType"] as? String else {
        return nil
    }
    //  a valid TriviaType from the enum to add to the designated initializer below
    self.init(questionPrompt: questionPrompt,
              correctAnswer: correctAnswer,
              choices: choices,
              fact: fact,
              // creating a TriviaType using the rawValue
      // initializer
      triviaType: TriviaType(rawValue: triviaType) ?? TriviaType.sportsTrivia)
  }
  
  func showQuestion() {
    print(questionPrompt)
    print(choices)
  }
  
  func checkAnswer(userAnswer: String) -> Bool {
    var isCorrect = false
    if userAnswer == correctAnswer {
      print("Correct answer.\n\(fact)")
      isCorrect = true
    } else {
      print("Wrong answer.\n\(fact)")
    }
    return isCorrect
  }
}



