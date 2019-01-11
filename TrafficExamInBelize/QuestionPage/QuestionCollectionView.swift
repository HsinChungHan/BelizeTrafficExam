//
//  QuestionCollectionView.swift
//  TrafficExamInBelize
//
//  Created by Chung Han Hsin on 2019/1/11.
//  Copyright © 2019 辛忠翰. All rights reserved.
//

import UIKit

class QuestionCollectionView: UICollectionView {
    var questions: [Question]
    var currentIndexPath = IndexPath.init(item: 0, section: 0)
    
    
    init(frame: CGRect, questions: [Question]){
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        self.questions = questions
        super.init(frame: frame, collectionViewLayout: layout)
        delegate = self
        dataSource = self
        register(QuestionCell.self, forCellWithReuseIdentifier: "cellID")
        isPagingEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


extension QuestionCollectionView: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return questions.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath) as! QuestionCell
        cell.setupValues(question: questions[indexPath.item])
        cell.questionView?.wrongView.delegate = self
        return cell
    }
}


extension QuestionCollectionView: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width, height: frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}


extension QuestionCollectionView: WrongViewDelegate{
    func goToNextQuestion(sender: UIButton) {
        if currentIndexPath.item < questions.count - 1{
            currentIndexPath = IndexPath.init(item: currentIndexPath.item + 1, section: 0)
            self.scrollToItem(at: currentIndexPath, at: .centeredHorizontally, animated: true)
        }else{
            //MARK: go to score page
        }
    }
    
    
}
