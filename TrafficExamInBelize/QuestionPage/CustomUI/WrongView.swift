//
//  AlertView.swift
//  TrafficExamInBelize
//
//  Created by Chung Han Hsin on 2019/1/11.
//  Copyright © 2019 辛忠翰. All rights reserved.
//

import UIKit

protocol WrongViewDelegate {
    func goToNextQuestion(sender: UIButton)
}

class WrongView: UIView {
    var delegate: WrongViewDelegate?
    
    let iconImageView = UIImageView(frame: .zero)
    let answerLabel = UILabel(frame: .zero)
    lazy var nextButton: UIButton = {
       let btn = UIButton.init(type: .system)
        btn.setTitle("Tap to next question!", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        btn.backgroundColor = .blue
        btn.addTarget(self, action: #selector(goToNextQuestion(sender:)), for: .touchUpInside)
        return btn
    }()
    
    @objc func goToNextQuestion(sender: UIButton){
        delegate?.goToNextQuestion(sender: sender)
    }
    
    init(frame: CGRect, question: Question) {
        super.init(frame: frame)
        iconImageView.image = question.signImage
        answerLabel.text = question.rightAnswer
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupViews(){
        addSubview(iconImageView)
        addSubview(answerLabel)
        addSubview(nextButton)
        iconImageView.anchor(top: topAnchor, bottom: nil, left: nil, right: nil, topPadding: 20, bottomPadding: 0, leftPadding: 0, rightPadding: 0, width: frame.height/2, height: frame.height/2)
        iconImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        let stackView = CustomStackView.init(subViews: [answerLabel, nextButton], axis: .vertical , distribution: .fillEqually, spacing: 20)
        addSubview(stackView)
        stackView.anchor(top: iconImageView.bottomAnchor, bottom: bottomAnchor, left: leftAnchor, right: rightAnchor, topPadding: 30, bottomPadding: 30, leftPadding: 30, rightPadding: 30, width: 0, height: 0)
        nextButton.setCorner(radius: 10)
    }
}
