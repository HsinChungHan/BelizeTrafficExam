//
//  QuestionCell.swift
//  TrafficExamInBelize
//
//  Created by Chung Han Hsin on 2019/1/11.
//  Copyright © 2019 辛忠翰. All rights reserved.
//

import UIKit

class QuestionCell: UICollectionViewCell {
    var questionView: QuestionView?
    
    var question: Question?{
        didSet{
            guard let question = question else {return}
            questionView = QuestionView.init(question: question)
            addSubview(questionView!)
            questionView?.fullAnchor(superView: self)
        }
    }
    
    public func setupValues(question: Question){
        self.question = question
    }
}
