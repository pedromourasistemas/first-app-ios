//
//  CardOneView.swift
//  Treinamento iOS
//
//  Created by Pedro Henrique de Moura on 22/10/19.
//  Copyright © 2019 Social Bank. All rights reserved.
//

import UIKit

@IBDesignable class CardOneView: UIBaseView {
    
    @IBOutlet weak var hideAmountButton: UIButton!
    
    override func onLoadView() {
        self.setStyleAmountButton()
    }
    
    private func setStyleAmountButton(){

        self.hideAmountButton.layer.cornerRadius = self.hideAmountButton.frame.size.height / 2
        self.hideAmountButton.layer.shadowColor = UIColor.black.cgColor
        self.hideAmountButton.layer.shadowOpacity = 0.15
        self.hideAmountButton.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.hideAmountButton.layer.shadowRadius = 1
        self.hideAmountButton.layer.masksToBounds = false
        self.hideAmountButton.layer.shadowPath = UIBezierPath(

            roundedRect: self.hideAmountButton.bounds,

            cornerRadius: self.hideAmountButton.layer.cornerRadius

        ).cgPath

    }
    
}

