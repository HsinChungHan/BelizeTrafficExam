//
//  QuestionView.swift
//  TrafficExamInBelize
//
//  Created by 辛忠翰 on 2019/1/7.
//  Copyright © 2019 辛忠翰. All rights reserved.
//

import UIKit

protocol QuestionViewDelegate {
    func presentWrongView(questionView: QuestionView)
}


let screenHeight = UIScreen.main.bounds.height
let screenWidth = UIScreen.main.bounds.width

class QuestionView: UIView {
    
    var delegate: QuestionViewDelegate?
    var wrongView: WrongView
    var questionImageView: QuestionImageView
    var buttons = [QuestionButton]()
    
    init(question: Question) {
        self.wrongView = WrongView.init(frame: CGRect.init(x: 0, y: 0, width: screenWidth - 30, height: screenWidth - 30), question: question)
        questionImageView = QuestionImageView.init(image: question.signImage, contenMode: .scaleAspectFill)
        super.init(frame: .zero)
        for index in 0 ... 2{
            let questionButton = QuestionButton.init(tag: index, question: question, backgroundColor: .green)
            questionButton.delegate = self
            buttons.append(questionButton)
        }
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupViews(){
        addSubview(questionImageView)
        questionImageView.anchor(top: topAnchor, bottom: nil, left: nil, right: nil, topPadding: 80, bottomPadding: 0, leftPadding: 0, rightPadding: 0, width: screenWidth/2, height: screenWidth/2)
        questionImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        let stackView = CustomStackView.init(subViews: buttons, axis: .vertical, distribution: .fillEqually, spacing: 40)
        addSubview(stackView)
        stackView.anchor(top: questionImageView.bottomAnchor, bottom: nil, left: leftAnchor, right: rightAnchor, topPadding: 40, bottomPadding: 0, leftPadding: 20, rightPadding: 20, width: 0, height: screenWidth/2)
        for button in buttons{
            button.setCorner(radius: 10)
        }
    }
}

extension QuestionView: QuestionButtonDelegate{
    func didTapAnswerButton(sender: QuestionButton, question: Question) {
        if sender.titleLabel?.text == question.rightAnswer{
            
        }else{
            addSubview(wrongView)
            wrongView.backgroundColor = .red
            wrongView.center = center
        }
        
        
    }
    
}
