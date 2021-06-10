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
    
    func checkAnswer(answer: String) {
        
    }
}
