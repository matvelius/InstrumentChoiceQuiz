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

// store correlations
var instrumentFamilyCorrelations = [InstrumentFamily: Int]()
var stringsCorrelations = [Strings: Int]()
var woodwindsCorrelations = [Woodwinds: Int]()
var brassCorrelations = [Brass: Int]()
var percussionCorrelations = [Percussion: Int]()
var keyboardsCorrelations = [Keyboards: Int]()

// CATEGORIES:

enum InstrumentFamily: CustomStringConvertible {
    case strings, woodwinds, brass, percussion, keyboards, voice
    
    var description: String {
        switch self {
        case .strings: return "string"
        case .woodwinds: return "woodwind"
        case .brass: return "brass"
        case .percussion: return "percussion"
        case .keyboards: return "keyboard"
        case .voice: return "voice"
        }
    }
}

enum Strings {
    case violin, viola, cello, bass, harp, guitar, ukulele, banjo
}

enum Woodwinds {
    case flute, oboe, english_horn, bassoon, recorder, clarinet, saxophone
}

enum Brass {
    case trumpet, trombone, euphonium, tuba, french_horn
}

enum Percussion {
    case drum_set, orchestral_percussion
}

enum Keyboards {
    case piano, harpsichord, organ, synthesizer
}

enum Genre {
    case classical, pop, rock, hip_hop, blues, jazz, electronic, country, folk
}

enum Participation {
    case solo, smallGroup, largeEnsemble
}

// GIVE WEIGHT TO PARAMETERS FOR EACH ANSWER
// CALCULATE CORRELATION LATER

struct Answer {
    
    // answer types: text, audio sample selection, image?, video?
    var answerOption: Any?
    
    // correlations & weight
    // instruments:
    
    var primaryInstrumentFamily: InstrumentFamily?
    var primaryInstrumentFamilyScore: Int?
    
    var primaryInstrument: Any?
    var primaryInstrumentScore: Int?
    
//    var secondaryInstrument: InstrumentFamily?
//    var secondaryInstrumentScore: Int?
//
//    var tertiaryInstrument: InstrumentFamily?
//    var tertiaryInstrumentScore: Int?
    
    // genres
    
    var primaryGenre: Genre?
    var primaryGenreScore: Int?
    
//    var secondaryGenre: Genre?
//    var secondaryGenreScore: Int?
//
//    var tertiaryGenre: Genre?
//    var tertiaryGenreScore: Int?
    
    // participation options
    
    var primaryParticipation: Participation?
    var primaryParticipationScore: Int?
    
//    var secondaryParticipation: Participation?
//    var secondaryParticipationScore: Int?
//
//    var tertiaryParticipation: Participation?
//    var tertiaryParticipationScore: Int?
    
    var leftSideLabel: String?
    var leftSideMeaning: Any?
    var rightSideLabel: String?
    var rightSideMeaning: Any?
    
//    var leftIndicator: Any?
//    var rightIndicator: Any?
    
    // initializer for single type answers
    init(answerOption: Any?,
         primaryInstrumentFamily: InstrumentFamily?,
         primaryInstrumentFamilyScore: Int?,
         primaryInstrument: Any?,
         primaryInstrumentScore: Int?,
         primaryGenre: Genre?,
         primaryGenreScore: Int?,
         primaryParticipation: Participation?,
         primaryParticipationScore: Int?
         ) {
        
        
        self.answerOption = answerOption
        self.primaryInstrumentFamily = primaryInstrumentFamily
        self.primaryInstrumentFamilyScore = primaryInstrumentFamilyScore
        self.primaryInstrument = primaryInstrument
        self.primaryInstrumentScore = primaryInstrumentScore
        self.primaryGenre = primaryGenre
        self.primaryGenreScore = primaryGenreScore
        self.primaryParticipation = primaryParticipation
        self.primaryParticipationScore = primaryParticipationScore
        
    }
    
    // initializer for ranged type answers
    init(leftSideLabel: String?,
         leftSideMeaning: Any?,
         rightSideLabel: String?,
         rightSideMeaning: Any?
        ) {
        
        self.leftSideLabel = leftSideLabel
        self.leftSideMeaning = leftSideMeaning
        self.rightSideLabel = rightSideLabel
        self.rightSideMeaning = rightSideMeaning
        
    }
    
}

//var selectedAnswers = [Question:Answer]()



//// SELECTING CORRELATION FOR EACH ANSWER

//struct Answer {
//    var text: String
//    var instruments: [InstrumentFamily]
//    var genres: [Genre]
//    var participation: [Participation]
//}

