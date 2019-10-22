# Trivia commaind-line app

## TriviaData.swift 

A struct the has one single property. The property is a type property that is an array of dictionaries. The dictionaries in the array hold all the questions for the TriviaGame. 

## TriviaType.swift 

An enum with the trivia options the user will have when starting a game.

#### Challenge
1. make TriviaType a rawValue of String


## Game.swift

This data type will hold all the game playing logic of the TriviaGame. 

#### Challenge

#### Write the following properties
1. a questions array property [Question]
2. a score property
3. a total questions property
4. a computed property ```hasMoreQuestions``` that returns a Bool as to whether or not the questions array is empty.

#### Write the following methods
1. write a method to get a shuffled question
  remove the question from the questions array above
2. write a method to start the Game, this method
  creates the array of questions [Question]
3. write a method to check if the answer is correct
  and increment the score by 1 
4. Write a method that prints out the final score and total of questions. 
5. Write a method that resets the game if the player wishes to continue
6. Write a method that takes in the users choice of trivia e.g "1" to play movie trivia
  
## Question.swift 

Represents a Question model. We spoke about object-oriented programming. Here we are modelling a question taken from the data array of dictionary elements. The keys in the dictionary represents the properties in the Question object. 

#### Challenge 

1. Create a failable convenience initializer that takes in a dictionary of type ```[String: Any]```
2. Refactor the triviaType property to be of type TriviaType, also update code so it works with the designated initializer 

## Main.swift

#### Challenge 

1. Create a Game instance 
2. Create a property called playAgain and set it to false. This will be modified base on if the user wishes to continue playiing. 
3. Use a repeat-while to start playing the game. 
4. In the repeat-while take the users trivia choice. 
5. Call the select trivia Game instance method in order to start the Game. 
6. Use an embedded repeat-while to loop over all current questions. 
7. Print the current question.
8. Print the answer choices. 
9. Check the user's answer. 
10.Keep looping inside the inner repeat-while while there are questions left. 
11.When there are no longer questions, print the final score and reset the game.  
12.Ask the user if they wish to continue playing in the outer repeat-while.  
