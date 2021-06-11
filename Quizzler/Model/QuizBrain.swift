//
//  QuizBrain.swift
//  Quizzler
//
//  Created by Sergey Romanchuk on 10.06.21.
//

import Foundation

struct QuizBrain {
    var questionIndex = 0
    let quizQuestions = [
        QuizQuestion(q: "Are you human?", a: "True"),
        QuizQuestion(q: "Are clouds blue?", a: "False"),
        QuizQuestion(q: "Moscow is the center of the world!", a: "False")
    ]
    
    func checkAnswer(_ answer: String) -> Bool {
        return answer == quizQuestions[questionIndex].answer
    }
    
    func getProgress() -> Float {
        return Float(questionIndex + 1) / Float(quizQuestions.count)
    }
    
    func getQuestionDescription() -> String {
        return quizQuestions[questionIndex].description
    }
    
    mutating func nextQuestion() {
        if quizQuestions.count - 1 > questionIndex {
            questionIndex += 1
        } else {
            questionIndex = 0
        }
    }
    
}
