//
//  QuestionTypeTableViewCell.swift
//  TrafficExamInBelize
//
//  Created by 辛忠翰 on 2019/1/7.
//  Copyright © 2019 辛忠翰. All rights reserved.
//

import UIKit

class QuestionTypeTableViewCell: UITableViewCell {
    let screenWidth = UIScreen.main.bounds.width
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "ICT Project"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = UIColor.black
        return label
    }()
    
    let numLabel: UILabel = {
        let label = UILabel()
        label.text = "100 people"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = UIColor.black
        return label
    }()

    let correctRateLabel: UILabel = {
        let label = UILabel()
        label.text = "90%"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = UIColor.black
        return label
    }()
    
    fileprivate func setupViews(){
        addSubview(titleLabel)
        addSubview(numLabel)
        addSubview(correctRateLabel)
        titleLabel.anchor(top: topAnchor, bottom: bottomAnchor, left: leftAnchor, right: nil, topPadding: 10, bottomPadding: 10, leftPadding: 10, rightPadding: 0, width: screenWidth/2, height: 0)
        correctRateLabel.anchor(top: titleLabel.topAnchor, bottom: titleLabel.bottomAnchor, left: nil, right: rightAnchor, topPadding: 0, bottomPadding: 0, leftPadding: 0, rightPadding: 10, width: screenWidth/5, height: 0)
        numLabel.anchor(top: correctRateLabel.topAnchor, bottom: correctRateLabel.bottomAnchor, left: nil, right: correctRateLabel.leftAnchor, topPadding: 0, bottomPadding: 0, leftPadding: 0, rightPadding: 10, width: screenWidth/5, height: 0)
    }
    
    public func setupValues(){
        
    }
}
