//
//  QuestionGroup.swift
//  TrafficExamInBelize
//
//  Created by 辛忠翰 on 2019/1/7.
//  Copyright © 2019 辛忠翰. All rights reserved.
//

import UIKit
struct QuestionGroup {
    let questions: [Question]
    let title: String
    
    static func getQuestonGroup() -> QuestionGroup{
         let questions = [
            Question.init(signImage: UIImage(named: "img0")!, rightAnswer: "No-Entry", answers: ["Stop", "Entry", "No-Entry"]),
            Question.init(signImage: UIImage(named: "img1")!, rightAnswer: "No-Parking", answers: ["No-Painting", "No-Sleeping", "No-Parking"]),
            Question.init(signImage: UIImage(named: "img2")!, rightAnswer: "Stop", answers: ["No-Stop", "Keep-Going", "Stop"]),
        ]
        return QuestionGroup.init(questions: questions, title: "ICT Projects")
        
    }
}
