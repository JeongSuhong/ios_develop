//
//  ViewController.swift
//  ios_develop
//
//  Created by Suhong Jeong on 2021/05/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var helloLabel: UILabel!
    @IBOutlet var nameField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func sendName(_ sender: UIButton) {
        helloLabel.text = "Hello, " + nameField.text!
    }
}

