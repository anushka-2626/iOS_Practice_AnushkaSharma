//
//  ViewController.swift
//  LogIn 2
//
//  Created by Student on 30/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var forgotUNButton: UIButton!
    @IBOutlet weak var forgotPWButton: UIButton!
    @IBAction func forgotUNButton(_ sender: Any) {
        performSegue(withIdentifier: "forgot", sender: sender)
    }
    
    @IBAction func forgotPWButton(_ sender: Any) {
        performSegue(withIdentifier: "forgot", sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender : Any?){
        guard let sender = sender as? UIButton else { return }
        if sender ==  forgotPWButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender ==  forgotUNButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }
}

