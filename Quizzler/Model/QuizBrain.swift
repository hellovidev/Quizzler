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
        if answer == quizQuestions[questionIndex].answer {
            // User got it right
        } else {
            // User got it wrong
        }

                // Handling answers
        switch userAnswer {
        case actualAnswer:
            sender.backgroundColor = .green
        default:
            sender.backgroundColor = .red
        }
    }
}
