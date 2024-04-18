//
//  QuizManager.swift
//  Quizzler-iOS13
//
//  Created by Ronald Ngounou on 4/18/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

final class QuizManager{
    
    var questions: [ChoicesQuestions] = []
    var questionNumber = 0
    var score = 0
    
    init() {
        let question1 = ChoicesQuestions(
            questionText: "What is the capital of France?",
            choices: [
                "London",
                "Paris",
                "Berlin"
            ],
            correctAnswerIndex: 1,
            explanation: "Paris is the capital of France."
        )
        
        let question2 = ChoicesQuestions(
            questionText: "What is the capital of Belgium?",
            choices: [
                "London",
                "Paris",
                "Brussels"
            ],
            correctAnswerIndex: 2,
            explanation: "Brussels is the capital of Belgium."
        )
        
        
        questions.append(contentsOf: [question1, question2])
    }
    
    func getQuestionText() -> String {
        return questions[questionNumber].questionText
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(questions.count)
    }
    
    func getCurrentQuestion() -> ChoicesQuestions? {
        guard questionNumber >= 0 && questionNumber < questions.count else {
            return nil
        }
        
        return questions[questionNumber]
    }
    
    func checkAnswer(_ selectedAnswerIndex: Int) -> Bool {
        guard let currentQuestion  = getCurrentQuestion() else {
            return false
        }
        if selectedAnswerIndex == currentQuestion.correctAnswerIndex {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func moveToNextQuestion() {
        if questionNumber + 1 < questions.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    
    
    
}