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
    @IBOutlet weak var textQuestionsStack: UIStackView!
    
    @IBOutlet weak var sliderQuestionsStack: UIStackView!

    
    @IBAction func radioButtonPressed(_ sender: UIButton) {
        
        // show selected choice
        let image = UIImage(named: "radio_button_selected")
        sender.setImage(image, for: UIControl.State.normal)
        
        // register the response
        let primaryInstrumentCorrelation = questions[questionIndex].answers[sender.tag].primaryInstrument
        
        let primaryInstrumentCorrelationScore = questions[questionIndex].answers[sender.tag].primaryInstrumentScore
        
        correlationsLog[primaryInstrumentCorrelation!] = primaryInstrumentCorrelationScore
        
        var currentHighScore = 0
        var currentInstrumentOfChoice = "piano"
        for (instrument, score) in correlationsLog {
            
            if score > currentHighScore {
                currentHighScore = score
                currentInstrumentOfChoice = "\(instrument)"
            }
        }
        
        print("the best instrument for you is \(currentInstrumentOfChoice), with the score of \(currentHighScore)" )
        
//        print(correlationsLog)
        
        // pause, then go to next question
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute:{
            
            // check if we've run out of questions yet
            if self.questionIndex < questions.endIndex - 1 {
                self.questionIndex += 1
                self.resetRadioButtons()
                self.loadNextQuestion()
            } else {
                print("done!")
            }
            
        })
        
    }
    
    var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadNextQuestion()
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
            
            for leftChoice in questions[questionIndex].answers.enumerated() {
                leftLabelOutletCollection[leftChoice.offset].text = leftChoice.element.leftSideMeaning
            }
            
            for rightChoice in questions[questionIndex].answers.enumerated() {
                rightLabelOutletCollection[rightChoice.offset].text = rightChoice.element.rightSideMeaning
            }
            
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
