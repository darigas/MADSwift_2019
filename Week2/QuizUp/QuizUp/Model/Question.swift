//
//  Question.swift
//  QuizUp
//
//  Created by Dariga Akhmetova on 2/18/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import Foundation

//Enumeration for case answers
enum Answer: CustomStringConvertible {
    case A
    case B
    case C
    case D
    
    var description: String {
        switch self {
        case .A: return "A"
        case .B: return "B"
        case .C: return "C"
        case .D: return "D"
        }
    }
}

//Question class
class Question  {
    let questionImage: String
    let questionText: String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    var answer: Answer
    
    init(questionImage: String, questionText: String, optionA: String, optionB: String, optionC: String, optionD: String, answer: Answer) {
        self.questionText = questionText
        self.questionImage = questionImage
        self.optionA = optionA
        self.optionB = optionB
        self.optionC = optionC
        self.optionD = optionD
        self.answer = answer
    }
}
