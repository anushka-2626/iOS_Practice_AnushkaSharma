//
//  MiddleViewController.swift
//  Order OF Events
//
//  Created by Student on 30/07/25.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet weak var middleLabel: UILabel!
    
    var eventNumber: Int = 1
    func addEvent(from: String){
        if let existingText = middleLabel.text {
            middleLabel.text = "\(existingText)\nEvent \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view was loaded")
    }

    override func viewWillAppear(_ animated: Bool) {
        print("view will appear")
        print(eventNumber)
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
