//
//  ChoicesQuestions.swift
//  Quizzler-iOS13
//
//  Created by Ronald Ngounou on 4/18/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct ChoicesQuestions{
    let questionText: String
    let choices: [String]
    let correctAnswerIndex: Int
    let explanation: String
    
    
    init(questionText: String, choices: [String], correctAnswerIndex: Int, explanation: String){
        self.questionText = questionText
        self.choices = choices
        self.correctAnswerIndex = correctAnswerIndex
        self.explanation = explanation
    }
}
