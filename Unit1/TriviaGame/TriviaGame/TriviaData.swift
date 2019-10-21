//
//  TriviaData.swift
//  TriviaGame
//
//  Created by Alex Paul on 10/21/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

// https://www.usefultrivia.com/movie_trivia/
// https://www.factmonster.com/take-quiz/new-york-city
struct Trivia {
  static let data: [[String: Any]] = [
    // movie
    ["question": "What is the highest grossing movie of all time?",
     "correctAnswer": "d",
     "choices": "a. Avatar\nb. Titanic\nc. Dark Knight\nd. Avenger Endgame",
     "fact": "Surpassed James Cameron's Avatar in 2019 with a gross box office number of $2.79 billion.",
     "triviaType": "movieTrivia"],
    ["question": "What is the longest movie ever made?",
     "correctAnswer": "a",
     "choices": "a. The cure for insomnia\nb. Hamlet\nc. The Stand\nd. Dances with Wolves",
     "fact": "he Cure for Insomnia (1987) is the longest movie ever made at a total running\ntime of 85 hours (5,220 min). It premiered in its entirety at The School Of The Art Institute in Chicago, Illinois\nfrom January 31 to February 3, 1987, in one continuous showing.",
     "triviaType": "movieTrivia"],
    ["question": "What was the first movie by Pixar to receive a rating higher than G in the United States?",
     "correctAnswer": "c",
     "choices": "a. Finding Nemo\nb. Monsters Inc.\nc. The Incredibles\nd. Toy Story",
     "fact": "The Incredibles received a PG rating for \"action violence\".",
     "triviaType": "movieTrivia"],
    ["question": "In The Wizard of Oz (1939), what was used to simulate snow during the poppy scene?",
     "correctAnswer": "a",
     "choices": "a. Asbestos\nb. Powdered Sugar\nc. Coconut Flakes\nd. Cornflakes",
     "fact": "The snow wasn't the only asbestos-laden element of production: \nThe Wicked Witch's broom was made of asbestos, as was the Scarecrow's entire outfit.",
     "triviaType": "movieTrivia"],
    ["question": "What movie popularized the phrase: \"May the Force be with you\"?",
     "correctAnswer": "d",
     "choices": "a. E.T\nb. The Matrix\nc. Star Trek\nd. Star Wars",
     "fact": "In the Star Wars movies, \"May the Force be with you\" was a phrase \nused to wish good luck or good will. The phrase was often used as individuals\nparted ways or in the face of an impending challenge.",
     "triviaType": "movieTrivia"],
    
    // music
    ["question": "What pop singer is known as \"The Material Girl\"?",
     "correctAnswer": "b",
     "choices": "a. Taylor Swift\nb. Madonna\nc. Britney Spears\nd. Christina Aguilera",
     "fact": "Madonna became known as \"The Material Girl\" after her hit single of\nthe same name hit the charts in 1984. She hates it, claiming she\nwould never have done the song if she knew the name would stick.",
     "triviaType": "musicTrivia"],
    ["question": "What singer holds the world record for most words in a hit single?",
     "correctAnswer": "c",
     "choices": "a. Kanye West\nb. Busta Rhymes\nc. Eminem\nd. 50 Cents",
     "fact": "The Detroit rapper achieved a world record with \"Rap God\".\nThe six-minute track contains 1,560 words which means that\nEminem is rapping a tongue-twisting 4.28 words per second.",
     "triviaType": "musicTrivia"],
    
    // sports
    ["question": "Who was the only person in NBA history to be named Most Valuable Player, Coach of the Year, and Executive of the Year?",
     "correctAnswer": "a",
     "choices": "a. Larry Bird\nb. Michael Jordan\nc. Bill Russel\nd. Phil Jackson",
     "fact": "Drafted into the NBA sixth overall by the Boston Celtics in\n1978, Larry Bird played his entire professional career for\nBoston, winning three NBA championships and two NBA\nFinals MVP awards. He then served as head coach of the Indiana Pacers\nfrom 1997 to 2000, and in 2003 assumed the role of president of basketball\noperations for the Pacers.",
     "triviaType": "sportsTrivia"],
    
    // nyc
    ["question": "The New York Aquarium is located in which New York City borough?",
     "correctAnswer": "c",
     "choices": "a. Queens\nb. Bronx\nc. Brooklyn\nd. Manhattan",
     "fact": "In 1896, the New York Aquarium first opened in Battery Park, Manhattan,\nbut it was moved to its current location in Brooklyn in 1957.",
     "triviaType": "nycTrivia"],
    ["question": "What stadium located in Flushing, Queens, is home to the New York Mets?",
     "correctAnswer": "d",
     "choices": "a. Yankee Stadium\nb. Ebbets Field\nc. Polo Grounds\nd. Shea Stadium",
     "fact": "The first game played at Shea Stadium in 1964 was between\nthe New York Mets and the Pittsburgh Pirates in front of 48,736 fans.",
     "triviaType": "nycTrivia"],
  ]
}
