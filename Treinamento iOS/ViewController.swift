//
//  ViewController.swift
//  Treinamento iOS
//
//  Created by Pedro Henrique de Moura on 08/10/19.
//  Copyright © 2019 Social Bank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var simpleText: UITextField!
    @IBOutlet weak var simpleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func alterTextByButton(_ sender: Any) {
        
        let stringText : String? = simpleText.text
        
        simpleLabel.text = stringText
        simpleText.text = ""
        
        /*let alert = UIAlertController(title: "Alert", message: stringText, preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)*/
    }
    
    @IBAction func callSecondView(_ sender: Any) {
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        transition.type = .push
        transition.subtype = .fromBottom
        navigationController?.view.layer.add(transition, forKey: kCATransition)
        navigationController?.pushViewController(SecondViewController, animated: false)
    }
}

