//
//  QuestionImageView.swift
//  TrafficExamInBelize
//
//  Created by 辛忠翰 on 2019/1/7.
//  Copyright © 2019 辛忠翰. All rights reserved.
//

import UIKit

class QuestionImageView: UIImageView {
    init(image: UIImage, contenMode: ContentMode) {
        super.init(frame: .zero)
        self.image = image
        self.contentMode = .scaleAspectFill
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
