//
//  ViewController.swift
//  Two Buttons
//
//  Created by Student on 16/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func setTextButton(_ sender: Any) {
        let text = TextField.text ?? ""
        label.text = text
        
    }
    
    @IBAction func clearTextButton(_ sender: Any) {
        label.text = ""
    }
}

