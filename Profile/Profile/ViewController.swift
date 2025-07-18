//
//  ViewController.swift
//  Profile
//
//  Created by Student on 15/07/25.
//

import UIKit

class ViewController: UIViewController {

    
    
    //@IBOutlet var view: UIView!
    @IBOutlet weak var name: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func switchMode(_ sender: UISwitch) {
        if sender.isOn {
            name.textColor = .white
            //view.backgroundColor = .black
        }
    }

}

