//
//  RandomStrategy.swift
//  TrafficExamInBelize
//
//  Created by 辛忠翰 on 2019/1/7.
//  Copyright © 2019 辛忠翰. All rights reserved.
//

import Foundation
import GameplayKit

class RandomStrategy: QuestionStrtegy {
    //Implement properties
    var title: String{
        return questionGroup.title
    }
    var correctCount: Int = 0
    var incorrectCount: Int = 0
    
    //Privat properties
    private let questionGroup: QuestionGroup
    private var questionIndex = 0
    private let questions: [Question]
    
    //Object Life Cycle
    init(questionGroup: QuestionGroup) {
        self.questionGroup = questionGroup
        
        //random questions array
        let randomSource = GKRandomSource.sharedRandom()
        self.questions = randomSource.arrayByShufflingObjects(in: questionGroup.questions) as! [Question]
        
    }
    
    //Implement method
    func currentQuestion() -> Question {
        return questions[questionIndex]
    }
    
    func goToNextQuestion() -> Bool {
        guard questionIndex + 1 < questions.count else{
            return false
        }
        questionIndex += 1
        return true
    }
    
    func markQuestionCorrect(_ question: Question) {
        correctCount += 1
    }
    
    func markQuestionIncorrect(_ question: Question) {
        incorrectCount += 1
    }
    
    func questionIndexTitle() -> String {
        return "\(questionIndex + 1)/\(questions.count) "
    }
}
