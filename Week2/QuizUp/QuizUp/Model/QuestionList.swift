//
//  QuestionList.swift
//  QuizUp
//
//  Created by Dariga Akhmetova on 2/18/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import Foundation

//Local questionList
public class QuestionList {
    var questions = [Question]()
    
    init(){
        questions.append(Question(questionImage: "medium1", questionText: "Guess the Movie", optionA: "Molly's Game", optionB: "Miss Sloane", optionC: "Vice", optionD: "Midnight in Paris", answer: .B))
        questions.append(Question(questionImage: "medium2", questionText: "Guess the Movie", optionA: "Broken City", optionB: "First Man", optionC: "Manchester by the Sea", optionD: "Labor Day", answer: .C))
        questions.append(Question(questionImage: "medium3", questionText: "Guess the Movie", optionA: "Ocean's Twelve", optionB: "Elysium", optionC: "Interstellar", optionD: "American Ultra", answer: .C))
        questions.append((Question(questionImage: "medium4", questionText: "Guess the Movie", optionA: "Служебный роман", optionB: "Гараж", optionC: "12 стульев", optionD: "Старомодная комедия", answer: .A)))
        questions.append(Question(questionImage: "medium5", questionText: "Guess the Movie", optionA: "Transcendence", optionB: "Batman Begins", optionC: "Memoirs of a Geisha", optionD: "Inception", answer: .D))
        questions.append(Question(questionImage: "medium6", questionText: "Guess the Movie", optionA: "Limitless", optionB: "The Good Shepherd", optionC: "The Departed", optionD: "Killer Elite", answer: .A))
        questions.append(Question(questionImage: "medium7", questionText: "Guess the Movie", optionA: "X-Men: Apocalypse", optionB: "The Hunger Games", optionC: "Winged Creatures", optionD: "Passengers", answer: .B))
        questions.append(Question(questionImage: "medium8", questionText: "Guess the Movie", optionA: "Life as we Know It", optionB: "27 Dresses", optionC: "The Ugly Truth", optionD: "Killers", answer: .C))
        questions.append(Question(questionImage: "medium9", questionText: "Guess the Movie", optionA: "What They Had", optionB: "Birds of America", optionC: "Freedom Writers", optionD: "P.S. I love you", answer: .C))
        questions.append(Question(questionImage: "medium10", questionText: "Guess the Movie", optionA: "Bel Ami", optionB: "Anna Karenina", optionC: "The Prestige", optionD: "Last Man Club", answer: .C))
        questions.append(Question(questionImage: "medium11", questionText: "Guess the Movie", optionA: "The Comebacks", optionB: "The Hangover", optionC: "Valentine's Day", optionD: "All About Steve", answer: .B))
        questions.append(Question(questionImage: "medium12", questionText: "Guess the Movie", optionA: "Silver Linings Playbook", optionB: "Between Us", optionC: "The Drowning", optionD: "Mona Lisa Smile", answer: .A))
        questions.append(Question(questionImage: "medium13", questionText: "Guess the Movie", optionA: "Chicken Little", optionB: "Bolt", optionC: "Zootopia", optionD: "Wreck-It Ralph", answer: .D))
        questions.append(Question(questionImage: "medium14", questionText: "Guess the Movie", optionA: "The Book's Thief", optionB: "The Best Offer", optionC: "Final Portrait", optionD: "The King's Speech", answer: .D))
        questions.append(Question(questionImage: "medium15", questionText: "Guess the Movie", optionA: "Insidious", optionB: "Black Swan", optionC: "Jackie", optionD: "Pride and Prejudice and Zombies", answer: .B))
    }
}

