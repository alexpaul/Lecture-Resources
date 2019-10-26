//
//  main.swift
//  TriviaGame
//
//  Created by Alex Paul on 10/21/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

// create a Game instance
let game = Game()

var playAgain = false

let userPrompt = """
Select the type of Trivia you would like to play?
1. Movie Trivia
2. Sports Trivia
3. Music Trivia
4. NYC Trivia
5. Second Grade Math
"""

repeat { // checks if user wants to continue
  print(userPrompt)
  let userResponse = readLine() ?? ""
  print()
  game.selectTrivia(userResponse)
  repeat { // goes through the questions array
    guard let question = game.getQuestion() else {
      break
    }
    game.questionsInfo()
    print(question.questionPrompt)
    print(question.choices)
    let userAnswer = readLine() ?? ""
    game.checkAnswer(usersAnswer: userAnswer, question: question)
    print()
  }while game.hasMoreQuestions
  
  game.finalScore()
  
  // prompt the user whether or not they want to keep
  // playing
  print("Do you wish to continue playing? (yes, no)")
  let shouldContinuePlaying = readLine() ?? ""
  if shouldContinuePlaying == "yes" {
    game.reset()
    playAgain = true
  } else {
    playAgain = false
  }
  print()
} while playAgain
