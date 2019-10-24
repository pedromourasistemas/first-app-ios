//
//  SecondViewController.swift
//  Treinamento iOS
//
//  Created by Pedro Henrique de Moura on 08/10/19.
//  Copyright © 2019 Social Bank. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func performCallWallet(_ sender: Any) {
        self.performSegue(withIdentifier: "callWalletSegue", sender: self)
    }
}
