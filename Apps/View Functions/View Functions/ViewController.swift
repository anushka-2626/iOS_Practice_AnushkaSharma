//
//  ViewController.swift
//  View Functions
//
//  Created by Student on 22/07/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("view was loaded")
    }

    override func viewWillAppear(_ animated: Bool) {
        print("view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disappear")
    }
}

