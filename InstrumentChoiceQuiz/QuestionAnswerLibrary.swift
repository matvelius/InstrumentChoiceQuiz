//
//  QuestionAnswerLibrary.swift
//  InstrumentChoiceQuiz
//
//  Created by Matvey on 3/9/19.
//  Copyright © 2019 Matvey. All rights reserved.
//

import UIKit

//var currentQuestionIndex: Int = 0

// attention to detail (strings, orchestral percussion?)
// risk taker? (french horn)
// good with making up rhymes?
// coordination? (high: drums, piano, strings; low: perucussion)

var questions: [Question] = [
    Question(text: "Which of the following describes you best?",
             type: .single,
             answers: [
                Answer(answerOption: "I'm shy and prefer to keep to myself",
                       primaryInstrumentFamily: .keyboards,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: Keyboards.piano,
                       primaryInstrumentScore: 7,
                       primaryGenre: .classical,
                       primaryGenreScore: 10,
                       primaryParticipation: .solo,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I'm not too shy and like to hang out with a few friends occasionally",
                       primaryInstrumentFamily: .strings,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: Strings.guitar,
                       primaryInstrumentScore: 8,
                       primaryGenre: .rock,
                       primaryGenreScore: 10,
                       primaryParticipation: .smallGroup,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I'm very outgoing and prefer to be around friends most of the time",
                       primaryInstrumentFamily: .brass,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: Brass.trumpet,
                       primaryInstrumentScore: 9,
                       primaryGenre: .jazz,
                       primaryGenreScore: 10,
                       primaryParticipation: .largeEnsemble,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I like to be the center of attention and can't stand being by myself",
                       primaryInstrumentFamily: .voice,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: nil,
                       primaryInstrumentScore: 10,
                       primaryGenre: .pop,
                       primaryGenreScore: 10,
                       primaryParticipation: .solo,
                       primaryParticipationScore: 10
                ) // end answer
            ] // end of Answer array
    ), // end of current question
    
    Question(text: "How is your attention span?",
             type: .single,
             answers: [
                Answer(answerOption: "Excellent: I can spend hours focusing on the same task",
                       primaryInstrumentFamily: .strings,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: Strings.violin,
                       primaryInstrumentScore: 8,
                       primaryGenre: .classical,
                       primaryGenreScore: 10,
                       primaryParticipation: .largeEnsemble,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "Pretty good: I'm ok with repetative tasks, as long as I can switch to something different every 45 minutes to an hour",
                       primaryInstrumentFamily: .woodwinds,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: Woodwinds.clarinet,
                       primaryInstrumentScore: 7,
                       primaryGenre: .classical,
                       primaryGenreScore: 10,
                       primaryParticipation: .smallGroup,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "Ok: I can focus on something for about 20-30 minutes, but after that I need a break",
                       primaryInstrumentFamily: .percussion,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: Percussion.drum_set,
                       primaryInstrumentScore: 8,
                       primaryGenre: .jazz,
                       primaryGenreScore: 10,
                       primaryParticipation: .smallGroup,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "Not great: I can pay attention for about 5 minutes, and then I need to do something else",
                       primaryInstrumentFamily: .strings,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: Strings.guitar,
                       primaryInstrumentScore: 9,
                       primaryGenre: .rock,
                       primaryGenreScore: 10,
                       primaryParticipation: .solo,
                       primaryParticipationScore: 10
                ) // end answer
        ] // end of Answer array
    ), // end of current question
    
    Question(text: "What kind of characteristics do you usually like in your music?",
             type: .ranged,
             answers: [
                Answer(leftSideLabel: "Soft",
                       leftSideMeaning: Genre.classical,
                       rightSideLabel: "Loud",
                       rightSideMeaning: Genre.rock
                ), // end answer
                
                Answer(leftSideLabel: "Slow",
                       leftSideMeaning: Genre.classical,
                       rightSideLabel: "Fast",
                       rightSideMeaning: Genre.electronic
                ), // end answer
                
                Answer(leftSideLabel: "Instrumental",
                       leftSideMeaning: Genre.jazz,
                       rightSideLabel: "Has vocals",
                       rightSideMeaning: Genre.pop
                ), // end answer
                
                Answer(leftSideLabel: "Acoustic",
                       leftSideMeaning: Genre.folk,
                       rightSideLabel: "Electronic",
                       rightSideMeaning: Genre.electronic
                ), // end answer
        ] // end of Answer array
    ), // end of current question
    
    Question(text: "How do you feel about new experiences?",
             type: .single,
             answers: [
                Answer(answerOption: "No thanks, I'd rather stick to what I know",
                       primaryInstrumentFamily: .keyboards,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: Keyboards.piano,
                       primaryInstrumentScore: 10,
                       primaryGenre: .pop,
                       primaryGenreScore: 10,
                       primaryParticipation: .solo,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I'm ok with trying something new once in a while",
                       primaryInstrumentFamily: .voice,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: nil,
                       primaryInstrumentScore: 7,
                       primaryGenre: .rock,
                       primaryGenreScore: 10,
                       primaryParticipation: .smallGroup,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I love new experiences!",
                       primaryInstrumentFamily: .brass,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: Brass.trombone,
                       primaryInstrumentScore: 9,
                       primaryGenre: .jazz,
                       primaryGenreScore: 10,
                       primaryParticipation: .smallGroup,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "If it were possible, I'd do something new every single day!",
                       primaryInstrumentFamily: .brass,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: Brass.trumpet,
                       primaryInstrumentScore: 8,
                       primaryGenre: .classical,
                       primaryGenreScore: 10,
                       primaryParticipation: .largeEnsemble,
                       primaryParticipationScore: 10
                ) // end answer
        ] // end of Answer array
    ), // end of current question
    
    Question(text: "Do you have a good sense of humor?",
             type: .single,
             answers: [
                Answer(answerOption: "What's humor?",
                       primaryInstrumentFamily: .strings,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: Strings.viola,
                       primaryInstrumentScore: 10,
                       primaryGenre: .classical,
                       primaryGenreScore: 10,
                       primaryParticipation: .largeEnsemble,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I like to laugh, but no one ever laughs at my jokes",
                       primaryInstrumentFamily: .strings,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: Strings.bass,
                       primaryInstrumentScore: 9,
                       primaryGenre: .rock,
                       primaryGenreScore: 10,
                       primaryParticipation: .smallGroup,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I can crack a joke once in a while",
                       primaryInstrumentFamily: .woodwinds,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: Woodwinds.saxophone,
                       primaryInstrumentScore: 9,
                       primaryGenre: .jazz,
                       primaryGenreScore: 10,
                       primaryParticipation: .largeEnsemble,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I'm basically a stand-up comedian!",
                       primaryInstrumentFamily: .brass,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: Brass.trumpet,
                       primaryInstrumentScore: 10,
                       primaryGenre: .jazz,
                       primaryGenreScore: 10,
                       primaryParticipation: .largeEnsemble,
                       primaryParticipationScore: 10
                ) // end answer
        ] // end of Answer array
    ), // end of current question
    
    Question(text: "How do you feel about people in position of authority?",
             type: .single,
             answers: [
                Answer(answerOption: "I have no respect for authority!",
                       primaryInstrumentFamily: .strings,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: Strings.guitar,
                       primaryInstrumentScore: 10,
                       primaryGenre: .rock,
                       primaryGenreScore: 10,
                       primaryParticipation: .smallGroup,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I'll listen, but only if they're bigger than me",
                       primaryInstrumentFamily: .brass,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: Brass.tuba,
                       primaryInstrumentScore: 7,
                       primaryGenre: .classical,
                       primaryGenreScore: 10,
                       primaryParticipation: .largeEnsemble,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I always respect people who are older and/or are in position of power",
                       primaryInstrumentFamily: .woodwinds,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: Woodwinds.oboe,
                       primaryInstrumentScore: 7,
                       primaryGenre: .classical,
                       primaryGenreScore: 10,
                       primaryParticipation: .largeEnsemble,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I never stand up for myself",
                       primaryInstrumentFamily: .strings,
                       primaryInstrumentFamilyScore: 10,
                       primaryInstrument: Strings.cello,
                       primaryInstrumentScore: 9,
                       primaryGenre: .classical,
                       primaryGenreScore: 10,
                       primaryParticipation: .solo,
                       primaryParticipationScore: 10
                ) // end answer
        ] // end of Answer array
    ), // end of current question
] // end of Question array

