//
//  QuestionTypeTableView.swift
//  TrafficExamInBelize
//
//  Created by 辛忠翰 on 2019/1/7.
//  Copyright © 2019 辛忠翰. All rights reserved.
//

import UIKit

protocol QuestionTypeTableViewDelegate {
    func goToQuestionVC(destionVC navi: UINavigationController)
}

class QuestionTypeTableView: UITableView {
    var questionTypeTableViewDelegate: QuestionTypeTableViewDelegate?
    
    init() {
        super.init(frame: .zero, style: .plain)
        delegate = self
        dataSource = self
        register(QuestionTypeTableViewCell.self, forCellReuseIdentifier: "cellId")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension QuestionTypeTableView: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! QuestionTypeTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.item {
        case 0:
            let questionGroup = QuestionGroup.getQuestonGroup()
            let naviVC = UINavigationController.init(rootViewController: QuestionViewController.init(questionGroup: questionGroup))
            questionTypeTableViewDelegate?.goToQuestionVC(destionVC: naviVC)
        default:
            print("Default")
        }
    }
    
}
