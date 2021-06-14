//
//  Question.swift
//  Quizzler
//
//  Created by Sergey Romanchuk on 10.06.21.
//

import Foundation

protocol Question {
    var description: String { get set }
    var answers: [String] { get set }
    var correctAnswer: String { get set }
}

struct QuizQuestion: Question {
    var description: String
    var answers: [String]
    var correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        self.description = q
        self.answers = a
        self.correctAnswer = correctAnswer
    }
}
