//
//  ViewController.swift
//  InstrumentChoiceQuiz
//
//  Created by Matvey on 3/9/19.
//  Copyright © 2019 Matvey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!

    @IBOutlet var radioButtonsOutletCollection: [UIButton]!
    
    @IBOutlet var answerTextOutletCollection: [UILabel]!
    
    @IBOutlet var leftLabelOutletCollection: [UILabel]!
    
    @IBOutlet var rightLabelOutletCollection: [UILabel]!
    
    @IBOutlet var sliderOutletCollection: [UISlider]!
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        
        print(slider.tag)
        print(slider.value)
        
    }
    
    @IBAction func submitButtonForSliders(_ sender: UIButton) {
        print("slider question submitted!")
        nextQuestionOrDone()
    }
    
    @IBOutlet weak var textQuestionsStack: UIStackView!
    
    @IBOutlet weak var sliderQuestionsStack: UIStackView!

    
    @IBAction func radioButtonPressed(_ sender: UIButton) {
        
        // fill radio button to show selected choice
        let image = UIImage(named: "radio_button_selected")
        sender.setImage(image, for: UIControl.State.normal)
        
        // register the instrument family response
        let primaryInstrumentFamilyCorrelation = questions[questionIndex].answers[sender.tag].primaryInstrumentFamily
        
        let primaryInstrumentFamilyCorrelationScore = questions[questionIndex].answers[sender.tag].primaryInstrumentFamilyScore
        
        // average out the instrument family correlation score, if it already exists
        if instrumentFamilyCorrelations[primaryInstrumentFamilyCorrelation!] != nil {
            instrumentFamilyCorrelations[primaryInstrumentFamilyCorrelation!] = (instrumentFamilyCorrelations[primaryInstrumentFamilyCorrelation!]! + primaryInstrumentFamilyCorrelationScore!) / 2
            
            print("Average Instrument Family Correlation Score for \(primaryInstrumentFamilyCorrelation!): \((instrumentFamilyCorrelations[primaryInstrumentFamilyCorrelation!]! + primaryInstrumentFamilyCorrelationScore!) / 2)")
            
        // otherwise just store it
        } else {
            instrumentFamilyCorrelations[primaryInstrumentFamilyCorrelation!] = primaryInstrumentFamilyCorrelationScore!
        }
        
        let primaryInstrumentCorrelation = questions[questionIndex].answers[sender.tag].primaryInstrument
        
        let primaryInstrumentCorrelationScore = questions[questionIndex].answers[sender.tag].primaryInstrumentScore
        
        // choose which dictionary to store result in
        switch primaryInstrumentFamilyCorrelation! {
            
        case .strings:
            
            // check if the correlation already exists
            if stringsCorrelations[primaryInstrumentCorrelation! as! Strings] != nil {
                stringsCorrelations[primaryInstrumentCorrelation! as! Strings] = (stringsCorrelations[primaryInstrumentCorrelation! as! Strings]! + primaryInstrumentCorrelationScore!) / 2
                
                print("Average Primary Instrument Correlation Score for strings: \((stringsCorrelations[primaryInstrumentCorrelation! as! Strings]! + primaryInstrumentCorrelationScore!) / 2)")
                
                // otherwise just store it
            } else {
                stringsCorrelations[primaryInstrumentCorrelation! as! Strings] = primaryInstrumentCorrelationScore!
                
                print("Primary Instrument Correlation Score for \(primaryInstrumentCorrelation!):")
                print(stringsCorrelations[primaryInstrumentCorrelation! as! Strings]!)
            }
        case .woodwinds:
            
            // check if the correlation already exists
            if woodwindsCorrelations[primaryInstrumentCorrelation! as! Woodwinds] != nil {
                woodwindsCorrelations[primaryInstrumentCorrelation! as! Woodwinds] = (woodwindsCorrelations[primaryInstrumentCorrelation! as! Woodwinds]! + primaryInstrumentCorrelationScore!) / 2
                
                print("Average Primary Instrument Correlation Score for woodwinds: \((woodwindsCorrelations[primaryInstrumentCorrelation! as! Woodwinds]! + primaryInstrumentCorrelationScore!) / 2)")
                
                // otherwise just store it
            } else {
                woodwindsCorrelations[primaryInstrumentCorrelation! as! Woodwinds] = primaryInstrumentCorrelationScore!
                
                print("Primary Instrument Correlation Score for \(primaryInstrumentCorrelation!):")
                print(woodwindsCorrelations[primaryInstrumentCorrelation! as! Woodwinds]!)
            }
            
        case .brass:
            
            // check if the correlation already exists
            if brassCorrelations[primaryInstrumentCorrelation! as! Brass] != nil {
                brassCorrelations[primaryInstrumentCorrelation! as! Brass] = (brassCorrelations[primaryInstrumentCorrelation! as! Brass]! + primaryInstrumentCorrelationScore!) / 2
                
                print("Average Primary Instrument Correlation Score for brass: \((brassCorrelations[primaryInstrumentCorrelation! as! Brass]! + primaryInstrumentCorrelationScore!) / 2)")
                
                // otherwise just store it
            } else {
                brassCorrelations[primaryInstrumentCorrelation! as! Brass] = primaryInstrumentCorrelationScore!
                
                print("Primary Instrument Correlation Score for \(primaryInstrumentCorrelation!):")
                print(brassCorrelations[primaryInstrumentCorrelation! as! Brass]!)
            }
            
        case .percussion:
            
            // check if the correlation already exists
            if percussionCorrelations[primaryInstrumentCorrelation! as! Percussion] != nil {
                percussionCorrelations[primaryInstrumentCorrelation! as! Percussion] = (percussionCorrelations[primaryInstrumentCorrelation! as! Percussion]! + primaryInstrumentCorrelationScore!) / 2
                
                print("Average Primary Instrument Correlation Score for percussion: \((percussionCorrelations[primaryInstrumentCorrelation! as! Percussion]! + primaryInstrumentCorrelationScore!) / 2)")
                
                // otherwise just store it
            } else {
                percussionCorrelations[primaryInstrumentCorrelation! as! Percussion] = primaryInstrumentCorrelationScore!
                
                print("Primary Instrument Correlation Score for \(primaryInstrumentCorrelation!):")
                print(percussionCorrelations[primaryInstrumentCorrelation! as! Percussion]!)
            }
            
        case .keyboards:
            
            // check if the correlation already exists
            if keyboardsCorrelations[primaryInstrumentCorrelation! as! Keyboards] != nil {
                keyboardsCorrelations[primaryInstrumentCorrelation! as! Keyboards] = (keyboardsCorrelations[primaryInstrumentCorrelation! as! Keyboards]! + primaryInstrumentCorrelationScore!) / 2
                
                print("Average Primary Instrument Correlation Score for keyboards: \((keyboardsCorrelations[primaryInstrumentCorrelation! as! Keyboards]! + primaryInstrumentCorrelationScore!) / 2)")
                
                // otherwise just store it
            } else {
                keyboardsCorrelations[primaryInstrumentCorrelation! as! Keyboards] = primaryInstrumentCorrelationScore!
                
                print("Primary Instrument Correlation Score for \(primaryInstrumentCorrelation!):")
                print(keyboardsCorrelations[primaryInstrumentCorrelation! as! Keyboards]!)
            }
            
        case .voice:
            print("Voice!")
        }
        
//        correlationsLog[primaryInstrumentCorrelation!] = primaryInstrumentCorrelationScore
        
//        var currentHighScore = 0
//        var currentInstrumentOfChoice = "piano"
//        for (instrument, score) in correlationsLog {
//
//            if score > currentHighScore {
//                currentHighScore = score
//                currentInstrumentOfChoice = "\(instrument)"
//            }
//        }
//
//        print("the best instrument for you is \(currentInstrumentOfChoice), with the score of \(currentHighScore)" )
        
//        print(correlationsLog)
        
        // keep going or finish:
        nextQuestionOrDone()
        
        
        
    }
    
    var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadNextQuestion()
    }
    
    func nextQuestionOrDone() {
        // pause, then go to next question
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute:{
            
            // check if we've run out of questions yet
            if self.questionIndex < questions.endIndex - 1 {
                self.questionIndex += 1
                self.resetRadioButtons()
                self.loadNextQuestion()
            } else {
                self.performSegue(withIdentifier: "showResults", sender: nil)
                print("done!")
            }
            
        })
    }
    
    func loadNextQuestion() {
        
//        print("endIndex: \(questions.endIndex), questionIndex: \(questionIndex)")
        
        // set the question label
        questionLabel.text = questions[questionIndex].text
        
        // retrieve the answer options from QuestionAnswerLibrary
        switch questions[questionIndex].type {
        
        case .single:
            
            textQuestionsStack.alpha = 1
            sliderQuestionsStack.alpha = 0
        
            for answer in questions[questionIndex].answers.enumerated() {
                answerTextOutletCollection[answer.offset].text = answer.element.answerOption as? String
            }
            
        case .ranged:
            
            textQuestionsStack.alpha = 0
            sliderQuestionsStack.alpha = 1
            
//            for leftChoice in questions[questionIndex].answers.enumerated() {
//                leftLabelOutletCollection[leftChoice.offset].text = leftChoice.element.leftSideMeaning
//            }
//            
//            for rightChoice in questions[questionIndex].answers.enumerated() {
//                rightLabelOutletCollection[rightChoice.offset].text = rightChoice.element.rightSideMeaning
//            }
            
        case .multiple: break
            
        }
        
    }
    
    func resetRadioButtons() {
        for radioButton in radioButtonsOutletCollection {
            let image = UIImage(named: "radio_button")
            radioButton.setImage(image, for: UIControl.State.normal)
        }
    }

    
    
}
