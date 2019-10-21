//
//  UIView.swift
//  FirstProjectXcode11
//
//  Created by Ramiro dos Santos Neto on 10/10/19.
//  Copyright © 2019 Ramiro Neto. All rights reserved.
//

import UIKit

extension UIView {
    
    /** Loads instance from nib with the same name. */
    func loadNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
}
