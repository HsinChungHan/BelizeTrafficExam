//
//  Question.swift
//  TrafficExamInBelize
//
//  Created by 辛忠翰 on 2019/1/7.
//  Copyright © 2019 辛忠翰. All rights reserved.
//

import UIKit
struct Question {
    let signImage: UIImage, rightAnswer: String, answers: [String]
    init(signImage: UIImage, rightAnswer: String, answers: [String]) {
        self.signImage = signImage
        self.rightAnswer = rightAnswer
        self.answers = answers
    }
}
