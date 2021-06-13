//
//  ViewController.swift
//  請記住我的名字
//
//  Created by Ariel Ko on 2021/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    @IBAction func saveButton(_ sender: UIButton) {
        
        UserDefaults.standard.set(textField.text, forKey: "name")
        messageLabel.text = "我們已經記住了您的姓名."
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let nameObject = UserDefaults.standard.object(forKey: "name")
        
        if let name = nameObject as? String {
            
            textField.placeholder = name
            
        }
    }


}

