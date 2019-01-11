//
//  SequentialStrategy.swift
//  TrafficExamInBelize
//
//  Created by 辛忠翰 on 2019/1/7.
//  Copyright © 2019 辛忠翰. All rights reserved.
//

import Foundation
class SequentialStrategy: QuestionStrtegy{
    //Implement properties
    var title: String{
        return questionGroup.title
    }
    var correctCount: Int = 0
    var incorrectCount: Int = 0
    
    //Privat properties
    private let questionGroup: QuestionGroup
    private var questionIndex = 0
    
    //Object Life Cycle
    init(questionGroup: QuestionGroup) {
        self.questionGroup = questionGroup
    }
    
    //Implement method
    func currentQuestion() -> Question {
        return questionGroup.questions[questionIndex]
    }
    
    func goToNextQuestion() -> Bool {
        guard questionIndex + 1 < questionGroup.questions.count else{
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
        return "\(questionIndex + 1)/\(questionGroup.questions.count) "
    }
}
