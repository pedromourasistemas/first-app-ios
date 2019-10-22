//
//  Helper.swift
//  Treinamento iOS
//
//  Created by Pedro Henrique de Moura on 22/10/19.
//  Copyright © 2019 Social Bank. All rights reserved.
//

import Foundation
import UIKit
public class Helper {
    static func loadNibByName(name: String!, of: NSObject) -> UIView {
        let bundle = Bundle(for: type(of: of))
        let nib = UINib(nibName: name, bundle: bundle)
        return nib.instantiate(withOwner: of, options: nil).first as! UIView
    }
    
    static func loadNibByNameFromMain(name: String!, of: NSObject) -> UIView {
        return Bundle.main.loadNibNamed(name, owner: of, options: nil)?.first as! UIView
    }
}
