//
//  QuestionList.swift
//  QuizUp
//
//  Created by Dariga Akhmetova on 2/18/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import Foundation

public class QuestionList {
    var questions = [Question]()
    
    init(){
        questions.append(Question(questionImage: "mediumFirst", questionText: "Guess the Movie", optionA: "Molly's Game", optionB: "Miss Sloane", optionC: "Vice", optionD: "Midnight in Paris", answer: .B))
        questions.append(Question(questionImage: "mediumSecond", questionText: "Guess the Movie", optionA: "Broken City", optionB: "First Man", optionC: "Manchester by the Sea", optionD: "Labor Day", answer: .C))
        questions.append(Question(questionImage: "mediumThird", questionText: "Guess the Movie", optionA: "Ocean's Twelve", optionB: "Elysium", optionC: "Interstellar", optionD: "American Ultra", answer: .C))
        questions.append((Question(questionImage: "mediumForth", questionText: "Guess the Movie", optionA: "Служебный роман", optionB: "Гараж", optionC: "12 стульев", optionD: "Старомодная комедия", answer: .A)))
        questions.append(Question(questionImage: "mediumFifth", questionText: "Guess the Movie", optionA: "Transcendence", optionB: "Batman Begins", optionC: "Memoirs of a Geisha", optionD: "Inception", answer: .D))
    }
}
