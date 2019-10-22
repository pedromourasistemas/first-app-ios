//
//  UIBaseView.swift
//  Treinamento iOS
//
//  Created by Pedro Henrique de Moura on 22/10/19.
//  Copyright © 2019 Social Bank. All rights reserved.
//

import UIKit

public class UIBaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.xibSetup()
        self.onInitialize()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.xibSetup()
        self.onInitialize()
    }
    
    public override func layoutSubviews() {
        self.onLoadView()
    }
    
    func onLoadView(){}
    func onInitialize(){}
    
    private func xibSetup() {
        let view = loadNib()
        view.frame = bounds
        view.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
        addSubview(view)
    }
    
    private func loadNib() -> UIView {
        let name = type(of: self).description().components(separatedBy: ".").last!
        let nib = Helper.loadNibByName(name: name, of: self)
        return nib
    }
}
