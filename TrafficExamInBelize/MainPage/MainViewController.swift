//
//  MainViewController.swift
//  TrafficExamInBelize
//
//  Created by 辛忠翰 on 2019/1/7.
//  Copyright © 2019 辛忠翰. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    let tableView = QuestionTypeTableView.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.questionTypeTableViewDelegate = self
        tableView.fullAnchor(superView: view)
        setupRightNavigationItemByTitle(title: "Strategy", selector: #selector(goToStrategyVC))
    }
    
    @objc func goToStrategyVC(){
        
    }

}

extension MainViewController: QuestionTypeTableViewDelegate{
    func goToQuestionVC(destionVC navi: UINavigationController) {
        present(navi, animated: true, completion: nil)
    }
    
    
}
