//
//  QuestionAnswerLibrary.swift
//  InstrumentChoiceQuiz
//
//  Created by Matvey on 3/9/19.
//  Copyright © 2019 Matvey. All rights reserved.
//

import UIKit

var questions: [Question] = [
    Question(text: "Which of the following describes you best?",
             type: .single,
             answers: [
                Answer(answerOption: "I'm shy and prefer to keep to myself",
                       primaryInstrument: .piano,
                       primaryInstrumentScore: 10,
                       primaryGenre: .classical,
                       primaryGenreScore: 10,
                       primaryParticipation: .solo,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I'm not too shy and like to hang out with a few friends occasionally",
                       primaryInstrument: .guitar,
                       primaryInstrumentScore: 10,
                       primaryGenre: .rock,
                       primaryGenreScore: 10,
                       primaryParticipation: .smallGroup,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I'm very outgoing and prefer to be around friends most of the time",
                       primaryInstrument: .brass,
                       primaryInstrumentScore: 10,
                       primaryGenre: .jazz,
                       primaryGenreScore: 10,
                       primaryParticipation: .largeEnsemble,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I like to be the center of attention and can't stand being by myself",
                       primaryInstrument: .voice,
                       primaryInstrumentScore: 10,
                       primaryGenre: .pop,
                       primaryGenreScore: 10,
                       primaryParticipation: .solo,
                       primaryParticipationScore: 10
                ) // end answer
            ] // end of Answer array
    ), // end of current question
] // end of Question array

