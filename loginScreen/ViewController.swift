//
//  ViewController.swift
//  loginScreen
//
//  Created by Linda 👱🏻‍♀️ on 2020-11-02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    @IBAction func onLoginClick(_ sender: Any) {
        // check to see if user entered valid password
        let username = usernameField.text
        let password = passwordField.text
        
        // if correct values entered, log in and keep error hidden
        if(username == "test" && password == "test") {
            errorLabel.isHidden = true
        } else { // display error message
            errorLabel.isHidden = false
        }
    }
    
}

