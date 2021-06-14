//
//  QuizBrain.swift
//  Quizzler
//
//  Created by Sergey Romanchuk on 10.06.21.
//

import Foundation

struct QuizBrain {
    var questionIndex = 0
    private var score = 0
    let quizQuestions = [
        QuizQuestion(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        QuizQuestion(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        QuizQuestion(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        QuizQuestion(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        QuizQuestion(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        QuizQuestion(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        QuizQuestion(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        QuizQuestion(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        QuizQuestion(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        QuizQuestion(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    mutating func checkAnswer(_ answer: String) -> Bool {
        let result = (answer == quizQuestions[questionIndex].correctAnswer)
        if result {
            score += 1
        }
        return result
    }
    
    func getProgress() -> Float {
        return Float(questionIndex + 1) / Float(quizQuestions.count)
    }
    
    func getQuestionDescription() -> String {
        return quizQuestions[questionIndex].description
    }
    
    func getQuestionAnswers() -> [String] {
        return quizQuestions[questionIndex].answers
    }
    
    mutating func nextQuestion() {
        if quizQuestions.count - 1 > questionIndex {
            questionIndex += 1
        } else {
            score = 0
            questionIndex = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
}
