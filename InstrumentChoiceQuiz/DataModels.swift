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
var genresCorrelations = [Genre: Int]()
var participationCorrelations = [Participation: Int]()

// CATEGORIES:

enum InstrumentFamily: CustomStringConvertible {
    
    case strings, woodwinds, brass, percussion, keyboards, voice
    
    var description: String {
        switch self {
        case .strings: return "strings"
        case .woodwinds: return "woodwind"
        case .brass: return "brass"
        case .percussion: return "percussion"
        case .keyboards: return "keyboard"
        case .voice: return "voice"
        }
    }
    
}

enum Strings: CustomStringConvertible {
    
    case violin, viola, cello, bass, harp, guitar, ukulele, banjo
    
    var description: String {
        switch self {
        case .violin: return "violin"
        case .viola: return "viola"
        case .cello: return "cello"
        case .bass: return "bass"
        case .harp: return "harp"
        case .guitar: return "guitar"
        case .ukulele: return "ukulele"
        case .banjo: return "banjo"
        }
    }
}

enum Woodwinds: CustomStringConvertible {
    
    case flute, oboe, english_horn, bassoon, recorder, clarinet, saxophone
    
    var description: String {
        switch self {
        case .flute: return "flute"
        case .oboe: return "oboe"
        case .english_horn: return "english horn"
        case .bassoon: return "bassoon"
        case .recorder: return "recorder"
        case .clarinet: return "clarinet"
        case .saxophone: return "saxophone"
        }
    }
    
}

enum Brass: CustomStringConvertible {
    
    case trumpet, trombone, euphonium, tuba, french_horn
    
    var description: String {
        switch self {
        case .trumpet: return "trumpet"
        case .trombone: return "trombone"
        case .euphonium: return "euphonium"
        case .tuba: return "tuba"
        case .french_horn: return "french horn"
        }
    }
}

enum Percussion: CustomStringConvertible {
    
    case drum_set, orchestral_percussion
    
    var description: String {
        switch self {
        case .drum_set: return "drum set"
        case .orchestral_percussion: return "orchestral percussion"
        }
    }
    
}

enum Keyboards: CustomStringConvertible {
    
    case piano, harpsichord, organ, synthesizer
    
    var description: String {
        switch self {
        case .piano: return "piano"
        case .harpsichord: return "harpsichord"
        case .organ: return "organ"
        case .synthesizer: return "synthesizer"
        }
    }
    
}

enum Genre: CustomStringConvertible {
    
    case classical, pop, rock, hip_hop, blues, jazz, electronic, country, folk
    
    var description: String {
        
        switch self {
            
        case .classical: return "classical"
        case .pop: return "pop"
        case .rock: return "rock"
        case .hip_hop: return "hip hop"
        case .blues: return "blues"
        case .jazz: return "jazz"
        case .electronic: return "electronic"
        case .country: return "country"
        case .folk: return "folk"
            
        }
    }
}

// there should be a genre recommendation in the results
// preferred genres should affect the scores of various instruments

enum Participation: CustomStringConvertible {
    
    case solo, smallGroup, largeEnsemble
    
    var description: String {
        switch self {
        case .solo: return "solo"
        case .smallGroup: return "small group"
        case .largeEnsemble: return "large ensemble"
        }
    }
}

// preferred participation should be in the results and should affect scores of instruments

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
    
    // initializer for multiple type answers
    init(answerOption: Any?,
         primaryInstrumentFamily: InstrumentFamily?,
         primaryInstrumentFamilyScore: Int?,
         primaryInstrument: Any?,
         primaryInstrumentScore: Int?) {
        
        self.answerOption = answerOption
        self.primaryInstrumentFamily = primaryInstrumentFamily
        self.primaryInstrumentFamilyScore = primaryInstrumentFamilyScore
        self.primaryInstrument = primaryInstrument
        self.primaryInstrumentScore = primaryInstrumentScore
        
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

