//
//  Question.swift
//  Quizzler
//
//  Created by Sergey Romanchuk on 10.06.21.
//

import Foundation

protocol Question {
    var description: String { get set }
    var answer: String { get set }
}

struct QuizQuestion: Question {
    var description: String
    var answer: String
    
    init(q: String, a: String) {
        self.description = q
        self.answer = a
    }
}
