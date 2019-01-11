//
//  CustomStackView.swift
//  TrafficExamInBelize
//
//  Created by Chung Han Hsin on 2019/1/10.
//  Copyright © 2019 辛忠翰. All rights reserved.
//

import UIKit

class CustomStackView: UIStackView {

    init(subViews: [UIView], axis: NSLayoutConstraint.Axis, distribution: UIStackView.Distribution, spacing: CGFloat){
        super.init(frame: .zero)
        for view in subViews{
            addArrangedSubview(view)
        }
        self.axis = axis
        self.distribution = distribution
        self.spacing = spacing
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
