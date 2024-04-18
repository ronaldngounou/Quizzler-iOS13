//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    //@IBOutlet var choiceButtons: [UIButton]! //could have been better with a list

    var quizBrain = QuizManager()
    
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        //let selectedChoice: String? //As I cannot define the variable outside of the conditional
        // statements, I will define the variable inside the function to handle force unwrapping.
        
        guard let selectedChoice = sender.currentTitle else {
            questionLabel?.text = "An unexpected error occured."
            assertionFailure("Unexpected case happened.")
            return
        }
        
        let userGotItRight = quizBrain.checkAnswer(selectedChoice)
        
        if userGotItRight{
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.moveToNextQuestion()
    
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        
        questionLabel.text = quizBrain.getQuestionText()
        
        let currentQuestion = quizBrain.getCurrentQuestion()
        
        choice1.setTitle(currentQuestion?.choices[0], for: .normal)
        choice2.setTitle(currentQuestion?.choices[1], for: .normal)
        choice3.setTitle(currentQuestion?.choices[2], for: .normal)
        
        
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear

    }

}


























