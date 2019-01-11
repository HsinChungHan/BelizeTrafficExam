//
//  QuestionStrategy.swift
//  TrafficExamInBelize
//
//  Created by 辛忠翰 on 2019/1/7.
//  Copyright © 2019 辛忠翰. All rights reserved.
//

import Foundation

protocol QuestionStrtegy {
    var title: String {get}
    var correctCount: Int{get}
    var incorrectCount: Int{get}
    func currentQuestion() -> Question
    func goToNextQuestion() -> Bool
    func markQuestionCorrect(_ question: Question)
    func markQuestionIncorrect(_ question: Question)
    func questionIndexTitle() -> String
}


