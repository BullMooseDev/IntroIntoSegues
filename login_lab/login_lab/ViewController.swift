//
//  ViewController.swift
//  login_lab
//
//  Created by kole ervine on 2/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTextBox: UITextField!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "forgot password"
        } else if sender == forgotUserNameButton{
            segue.destination.navigationItem.title = "forgot username"
        } else {
            segue.destination.navigationItem.title = userNameTextBox.text
        }
    }

    
    @IBAction func forgotUserNameTapped(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUserNameOrPassword", sender: forgotUserNameButton)
    }
    
    @IBAction func forgotPasswordTapped(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUserNameOrPassword", sender: forgotPasswordButton)
    }
    
}

