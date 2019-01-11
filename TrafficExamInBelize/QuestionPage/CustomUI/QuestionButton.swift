//
//  QuestionButton.swift
//  TrafficExamInBelize
//
//  Created by 辛忠翰 on 2019/1/7.
//  Copyright © 2019 辛忠翰. All rights reserved.
//

import UIKit

protocol QuestionButtonDelegate {
    func didTapAnswerButton(sender: QuestionButton, question: Question)
}

class QuestionButton: UIButton {
    var delegate: QuestionButtonDelegate?
    var question: Question
    init(tag: Int, question: Question, backgroundColor: UIColor) {
        self.question = question
        super.init(frame: .zero)
        setTitle(question.answers[tag], for: .normal)
        self.backgroundColor = backgroundColor
        self.tag = tag
        addTarget(self, action: #selector(buttonTap(sender:)), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func buttonTap(sender: QuestionButton){
        delegate?.didTapAnswerButton(sender: sender, question: question)
    }
    
}
