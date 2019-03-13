//
//  QuestionAnswerLibrary.swift
//  InstrumentChoiceQuiz
//
//  Created by Matvey on 3/9/19.
//  Copyright © 2019 Matvey. All rights reserved.
//

import UIKit

//var currentQuestionIndex: Int = 0

var questions: [Question] = [
    Question(text: "Which of the following describes you best?",
             type: .single,
             answers: [
                Answer(answerOption: "I'm shy and prefer to keep to myself",
                       primaryInstrument: .piano,
                       primaryInstrumentScore: 7,
                       primaryGenre: .classical,
                       primaryGenreScore: 10,
                       primaryParticipation: .solo,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I'm not too shy and like to hang out with a few friends occasionally",
                       primaryInstrument: .guitar,
                       primaryInstrumentScore: 8,
                       primaryGenre: .rock,
                       primaryGenreScore: 10,
                       primaryParticipation: .smallGroup,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I'm very outgoing and prefer to be around friends most of the time",
                       primaryInstrument: .brass,
                       primaryInstrumentScore: 9,
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
    
    Question(text: "How is your attention span?",
             type: .single,
             answers: [
                Answer(answerOption: "Excellent: I can spend hours focusing on the same task",
                       primaryInstrument: .strings,
                       primaryInstrumentScore: 8,
                       primaryGenre: .classical,
                       primaryGenreScore: 10,
                       primaryParticipation: .largeEnsemble,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "Pretty good: I'm ok with repetative tasks, as long as I can switch to something different every 45 minutes to an hour",
                       primaryInstrument: .woodwinds,
                       primaryInstrumentScore: 7,
                       primaryGenre: .classical,
                       primaryGenreScore: 10,
                       primaryParticipation: .smallGroup,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "Ok: I can focus on something for about 20-30 minutes, but after that I need a break",
                       primaryInstrument: .drums,
                       primaryInstrumentScore: 8,
                       primaryGenre: .jazz,
                       primaryGenreScore: 10,
                       primaryParticipation: .smallGroup,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "Not great: I can pay attention for about 5 minutes, and then I need to do something else",
                       primaryInstrument: .guitar,
                       primaryInstrumentScore: 9,
                       primaryGenre: .rock,
                       primaryGenreScore: 10,
                       primaryParticipation: .solo,
                       primaryParticipationScore: 10
                ) // end answer
        ] // end of Answer array
    ), // end of current question
    
    Question(text: "How do you feel about new experiences?",
             type: .single,
             answers: [
                Answer(answerOption: "No thanks, I'd rather stick to what I know",
                       primaryInstrument: .piano,
                       primaryInstrumentScore: 10,
                       primaryGenre: .pop,
                       primaryGenreScore: 10,
                       primaryParticipation: .solo,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I'm ok with trying something new once in a while",
                       primaryInstrument: .voice,
                       primaryInstrumentScore: 7,
                       primaryGenre: .rock,
                       primaryGenreScore: 10,
                       primaryParticipation: .smallGroup,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I love new experiences!",
                       primaryInstrument: .brass,
                       primaryInstrumentScore: 9,
                       primaryGenre: .jazz,
                       primaryGenreScore: 10,
                       primaryParticipation: .smallGroup,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "If it were possible, I'd do something new every single day!",
                       primaryInstrument: .brass,
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
                       primaryInstrument: .strings,
                       primaryInstrumentScore: 10,
                       primaryGenre: .classical,
                       primaryGenreScore: 10,
                       primaryParticipation: .largeEnsemble,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I like to laugh, but no one ever laughs at my jokes",
                       primaryInstrument: .voice,
                       primaryInstrumentScore: 7,
                       primaryGenre: .pop,
                       primaryGenreScore: 10,
                       primaryParticipation: .solo,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I can crack a joke once in a while",
                       primaryInstrument: .woodwinds,
                       primaryInstrumentScore: 9,
                       primaryGenre: .jazz,
                       primaryGenreScore: 10,
                       primaryParticipation: .largeEnsemble,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I'm basically a stand-up comedian!",
                       primaryInstrument: .brass,
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
                       primaryInstrument: .guitar,
                       primaryInstrumentScore: 10,
                       primaryGenre: .rock,
                       primaryGenreScore: 10,
                       primaryParticipation: .smallGroup,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I'll listen, but only if they're bigger than me",
                       primaryInstrument: .brass,
                       primaryInstrumentScore: 7,
                       primaryGenre: .classical,
                       primaryGenreScore: 10,
                       primaryParticipation: .largeEnsemble,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I always respect people who are older and/or are in position of power",
                       primaryInstrument: .woodwinds,
                       primaryInstrumentScore: 7,
                       primaryGenre: .classical,
                       primaryGenreScore: 10,
                       primaryParticipation: .largeEnsemble,
                       primaryParticipationScore: 10
                ), // end answer
                
                Answer(answerOption: "I never stand up for myself",
                       primaryInstrument: .strings,
                       primaryInstrumentScore: 9,
                       primaryGenre: .classical,
                       primaryGenreScore: 10,
                       primaryParticipation: .solo,
                       primaryParticipationScore: 10
                ) // end answer
        ] // end of Answer array
    ), // end of current question
] // end of Question array

