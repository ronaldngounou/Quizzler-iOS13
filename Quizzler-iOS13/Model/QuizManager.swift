//
//  QuizManager.swift
//  Quizzler-iOS13
//
//  Created by Ronald Ngounou on 4/18/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

final class QuizManager{
    
    var questionNumber = 0
    var score = 0

    let questions: [ChoicesQuestions] = [
        ChoicesQuestions(
            questionText: "Which sorting algorithm has a worst-case time complexity of O(n^2)?",
            choices: [
                "Merge Sort",
                "Bubble Sort",
                "Quick Sort"
            ],
            correctAnswerIndex: 1,
            explanation: "Bubble Sort has a worst-case time complexity of O(n^2)."
        ),
        ChoicesQuestions(
            questionText: "Which data structure provides constant-time average case for insertion, deletion, and lookup?",
            choices: [
                "Array",
                "Linked List",
                "HashMap"
            ],
            correctAnswerIndex: 2,
            explanation: "HashMap provides constant-time average case for insertion, deletion, and lookup."
        ),
        ChoicesQuestions(
            questionText: "What is the time complexity of the merge sort algorithm?",
            choices: [
                "O(n log n)",
                "O(n^2)",
                "O(log n)"
            ],
            correctAnswerIndex: 0,
            explanation: "The time complexity of merge sort is O(n log n)."
        ),
        ChoicesQuestions(
            questionText: "Which sorting algorithm works by repeatedly swapping adjacent elements if they are in the wrong order?",
            choices: [
                "Merge Sort",
                "Quick Sort",
                "Bubble Sort"
            ],
            correctAnswerIndex: 2,
            explanation: "Bubble Sort works by repeatedly swapping adjacent elements if they are in the wrong order."
        ),
        ChoicesQuestions(
           questionText: "Which sorting algorithm has the best average-case time complexity?",
           choices: [
               "Bubble Sort",
               "Quick Sort",
               "Merge Sort"
           ],
           correctAnswerIndex: 1,
           explanation: "Quick Sort has the best average-case time complexity of O(n log n)."
       ),
       ChoicesQuestions(
           questionText: "In which sorting algorithm does the partitioning step occur?",
           choices: [
               "Merge Sort",
               "Quick Sort",
               "Radix Sort"
           ],
           correctAnswerIndex: 1,
           explanation: "The partitioning step occurs in the Quick Sort algorithm."
       ),
       ChoicesQuestions(
           questionText: "What is the worst-case time complexity of quick sort?",
           choices: [
               "O(n log n)",
               "O(n^2)",
               "O(log n)"
           ],
           correctAnswerIndex: 1,
           explanation: "The worst-case time complexity of quick sort is O(n^2)."
       ),
       ChoicesQuestions(
           questionText: "Which sorting algorithm is not a comparison-based sorting algorithm?",
           choices: [
               "Bubble Sort",
               "Quick Sort",
               "Counting Sort"
           ],
           correctAnswerIndex: 2,
           explanation: "Counting Sort is not a comparison-based sorting algorithm."
       ),
        ChoicesQuestions(
            questionText: "Which data structure is used to implement associative arrays, mappings, and dictionaries?",
            choices: [
                "Array",
                "LinkedList",
                "HashMap"
            ],
            correctAnswerIndex: 2,
            explanation: "HashMap is used to implement associative arrays, mappings, and dictionaries."
        ),
        ChoicesQuestions(
            questionText: "What is the space complexity of merge sort?",
            choices: [
                "O(n)",
                "O(n log n)",
                "O(log n)"
            ],
            correctAnswerIndex: 0,
            explanation: "The space complexity of merge sort is O(n)."
        ),
        ChoicesQuestions(
            questionText: "Which sorting algorithm is known for its 'divide and conquer' approach?",
            choices: [
                "Bubble Sort",
                "Merge Sort",
                "Counting Sort"
            ],
            correctAnswerIndex: 1,
            explanation: "Merge Sort is known for its 'divide and conquer' approach."
        ),
        ChoicesQuestions(
            questionText: "What is the main advantage of radix sort over other comparison-based sorting algorithms?",
            choices: [
                "It has a better worst-case time complexity",
                "It is more memory efficient",
                "It has a linear time complexity"
            ],
            correctAnswerIndex: 2,
            explanation: "Radix Sort has a linear time complexity, which is an advantage over other comparison-based sorting algorithms."
        ),
        ChoicesQuestions(
            questionText: "Which sorting algorithm is stable?",
            choices: [
                "Quick Sort",
                "Merge Sort",
                "Radix Sort"
            ],
            correctAnswerIndex: 1,
            explanation: "Merge Sort is a stable sorting algorithm."
        ),
        ChoicesQuestions(
            questionText: "What is the time complexity of inserting an element into a hashmap?",
            choices: [
                "O(1)",
                "O(log n)",
                "O(n)"
            ],
            correctAnswerIndex: 0,
            explanation: "The time complexity of inserting an element into a hashmap is O(1) on average."
        ),
        ChoicesQuestions(
            questionText: "Which sorting algorithm works by repeatedly dividing the list into smaller sublists, then merging them back together?",
            choices: [
                "Quick Sort",
                "Bubble Sort",
                "Merge Sort"
            ],
            correctAnswerIndex: 2,
            explanation: "Merge Sort works by repeatedly dividing the list into smaller sublists, then merging them back together."
        ),
        ChoicesQuestions(
            questionText: "What is the time complexity of bubble sort?",
            choices: [
                "O(n)",
                "O(n log n)",
                "O(n^2)"
            ],
            correctAnswerIndex: 2,
            explanation: "The time complexity of bubble sort is O(n^2)."
        ),
        ChoicesQuestions(
            questionText: "Which data structure uses a hash function to map keys to values, allowing for efficient insertion, deletion, and lookup?",
            choices: [
                "LinkedList",
                "HashMap",
                "Binary Tree"
            ],
            correctAnswerIndex: 1,
            explanation: "HashMap uses a hash function to map keys to values, allowing for efficient insertion, deletion, and lookup."
        ),
        ChoicesQuestions(
            questionText: "What is the time complexity of searching for an element in an unsorted array?",
            choices: [
                "O(n)",
                "O(log n)",
                "O(n^2)"
            ],
            correctAnswerIndex: 0,
            explanation: "The time complexity of searching for an element in an unsorted array is O(n)."
        ),
        ChoicesQuestions(
            questionText: "Which sorting algorithm is commonly used for sorting integers within a specific range?",
            choices: [
                "Merge Sort",
                "Quick Sort",
                "Counting Sort"
            ],
            correctAnswerIndex: 2,
            explanation: "Counting Sort is commonly used for sorting integers within a specific range."
        ),
        ChoicesQuestions(
            questionText: "What is the time complexity of radix sort?",
            choices: [
                "O(n)",
                "O(n log n)",
                "O(kn)"
            ],
            correctAnswerIndex: 0,
            explanation: "The time complexity of radix sort is O(n)."
        ),
        ChoicesQuestions(
            questionText: "Which sorting algorithm is based on the idea of repeatedly selecting the minimum element from the unsorted portion of the array and placing it at the beginning?",
            choices: [
                "Bubble Sort",
                "Selection Sort",
                "Insertion Sort"
            ],
            correctAnswerIndex: 1,
            explanation: "Selection Sort is based on the idea of repeatedly selecting the minimum element from the unsorted portion of the array and placing it at the beginning."
        ),
        ChoicesQuestions(
            questionText: "What is the main disadvantage of quick sort?",
            choices: [
                "It has a high space complexity",
                "It is not stable",
                "It has a poor worst-case time complexity"
            ],
            correctAnswerIndex: 2,
            explanation: "The main disadvantage of quick sort is its poor worst-case time complexity."
        ),
        ChoicesQuestions(
            questionText: "Which data structure is used in breadth-first search (BFS) algorithm?",
            choices: [
                "Stack",
                "Queue",
                "Heap"
            ],
            correctAnswerIndex: 1,
            explanation: "Queue is used in breadth-first search (BFS) algorithm."
        ),
        ChoicesQuestions(
            questionText: "What is the time complexity of binary search on a sorted array?",
            choices: [
                "O(n)",
                "O(log n)",
                "O(n log n)"
            ],
            correctAnswerIndex: 1,
            explanation: "The time complexity of binary search on a sorted array is O(log n)."
        ),
        ChoicesQuestions(
            questionText: "Which sorting algorithm is most suitable for sorting small arrays or lists?",
            choices: [
                "Merge Sort",
                "Insertion Sort",
                "Radix Sort"
            ],
            correctAnswerIndex: 1,
            explanation: "Insertion Sort is most suitable for sorting small arrays or lists."
        ),
        ChoicesQuestions(
            questionText: "What is the time complexity of insertion sort?",
            choices: [
                "O(n)",
                "O(n log n)",
                "O(n^2)"
            ],
            correctAnswerIndex: 2,
            explanation: "The time complexity of insertion sort is O(n^2)."
        ),
        ChoicesQuestions(
            questionText: "Which data structure uses LIFO (Last In, First Out) principle?",
            choices: [
                "Queue",
                "Stack",
                "Heap"
            ],
            correctAnswerIndex: 1,
            explanation: "Stack uses LIFO (Last In, First Out) principle."
        ),
        ChoicesQuestions(
           questionText: "What is the time complexity of selection sort?",
           choices: [
               "O(n)",
               "O(n log n)",
               "O(n^2)"
           ],
           correctAnswerIndex: 2,
           explanation: "The time complexity of selection sort is O(n^2)."
       )
    ]
    
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
    
    func getExplanation() -> String {
        return questions[questionNumber].explanation
    }
    
    func getScore() -> Int {
        return score
    }
    
    func checkAnswer(_ selectedChoice: String) -> Bool {
        guard let currentQuestion  = getCurrentQuestion() else {
            return false
        }
        if selectedChoice == currentQuestion.choices[currentQuestion.correctAnswerIndex] {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func moveToNextQuestion() {
        let nextQuestionNumber = questionNumber + 1
        if nextQuestionNumber < questions.count {
            questionNumber = nextQuestionNumber
        } else {
            questionNumber = 0
        }
    }
    
    
    
    
}
