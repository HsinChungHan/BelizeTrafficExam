//
//  QuestionViewController.swift
//  TrafficExamInBelize
//
//  Created by 辛忠翰 on 2019/1/7.
//  Copyright © 2019 辛忠翰. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    var collectionView: QuestionCollectionView
    
    init(questionGroup: QuestionGroup){
        collectionView = QuestionCollectionView.init(frame: UIScreen.main.bounds, questions: questionGroup.questions)
        super.init(nibName: nil, bundle: nil)
        view.addSubview(collectionView)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRightNavigationItemByTitle(title: "2/7", selector: nil)
    }
}


