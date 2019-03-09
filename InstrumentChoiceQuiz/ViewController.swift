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
    
    @IBAction func radioButtonPressed(_ sender: UIButton) {
        let image = UIImage(named: "radio_button_selected")
        sender.setImage(image, for: UIControl.State.normal)
        // go to next question
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = questions[0].text
        
        for answer in questions[0].answers.enumerated() {
        answerTextOutletCollection[answer.offset].text = answer.element.answerOption as? String
            
        }
        
    }

}

