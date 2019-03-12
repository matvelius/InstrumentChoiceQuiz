//
//  DataModels.swift
//  InstrumentChoiceQuiz
//
//  Created by Matvey on 3/9/19.
//  Copyright © 2019 Matvey. All rights reserved.
//

import UIKit

// QUESTIONS

enum QuestionType {
    case single, multiple, ranged
}

//struct Question: Equatable, Hashable {
struct Question {
    var text: String
    var type: QuestionType
    var answers: [Answer]
    
//    static func == (lhs: Question, rhs: Question) -> Bool {
//        return lhs.text == rhs.text
//    }
//
//    var hashValue: Int {
//        return text.hashValue ^ type.hashValue
//    }
}

// ANSWERS

// CATEGORIES:

enum InstrumentFamily {
    case strings, woodwinds, brass, drums, percussion, piano, guitar, voice
}

enum Genre {
    case classical, pop, rock, blues, jazz, electronic, country, folk
}

enum Participation {
    case solo, smallGroup, largeEnsemble
}

// GIVE WEIGHT TO PARAMETERS FOR EACH ANSWER
// CALCULATE CORRELATION LATER

struct Answer {
    
    // answer types: text, audio sample selection, image?, video?
    var answerOption: Any
    
    // correlations & weight
    // instruments:
    
    var primaryInstrument: InstrumentFamily
    var primaryInstrumentScore: Int
    
    var secondaryInstrument: InstrumentFamily?
    var secondaryInstrumentScore: Int?
    
    var tertiaryInstrument: InstrumentFamily?
    var tertiaryInstrumentScore: Int?
    
    // genres
    
    var primaryGenre: Genre
    var primaryGenreScore: Int
    
    var secondaryGenre: Genre?
    var secondaryGenreScore: Int?
    
    var tertiaryGenre: Genre?
    var tertiaryGenreScore: Int?
    
    // participation options
    
    var primaryParticipation: Participation
    var primaryParticipationScore: Int
    
    var secondaryParticipation: Participation?
    var secondaryParticipationScore: Int?
    
    var tertiaryParticipation: Participation?
    var tertiaryParticipationScore: Int?
    
    // only require the primary categories & scores
    init(answerOption: Any,
         primaryInstrument: InstrumentFamily,
         primaryInstrumentScore: Int,
         primaryGenre: Genre,
         primaryGenreScore: Int,
         primaryParticipation: Participation,
         primaryParticipationScore: Int) {
        
        self.answerOption = answerOption
        self.primaryInstrument = primaryInstrument
        self.primaryInstrumentScore = primaryInstrumentScore
        self.primaryGenre = primaryGenre
        self.primaryGenreScore = primaryGenreScore
        self.primaryParticipation = primaryParticipation
        self.primaryParticipationScore = primaryParticipationScore
    }
}

//var selectedAnswers = [Question:Answer]()
var correlationsLog = [InstrumentFamily: Int]()

//// SELECTING CORRELATION FOR EACH ANSWER

//struct Answer {
//    var text: String
//    var instruments: [InstrumentFamily]
//    var genres: [Genre]
//    var participation: [Participation]
//}

