//
//  Question.swift
//  TriviaGame
//
//  Created by Alex Paul on 10/21/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Question { // this should be a struct
  var questionPrompt: String
  var correctAnswer: String
  var choices: String
  var fact: String
  var triviaType: TriviaType // movieTrivia, musicTrivia, sportsTrivia, nycTrivia
  
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
   convenience init?(dict: [String: Any]) {
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
}



