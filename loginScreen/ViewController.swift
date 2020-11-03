//  ViewController.swift
//  loginScreen
//
//  Created by Linda on 2020-11-02.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var submitBtn: UIButton!
    @IBOutlet weak var attemptsLabel: UILabel!
    
    var currentAttempt: Int = 0  // login attempts counter
    let maxAttempts = 3  // maximum allowed login attempts

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    @IBAction func onLoginClick(_ sender: Any) {
        // check to see if user entered valid password
        let username = usernameField.text ?? "" // if null then value = ""
        let password = passwordField.text ?? ""
        
        currentAttempt += 1  // increment counter
        
        // optional variables are represented by ? meaning could be null
        // unwrapping ! forces a value (null throws error)
        let loginManager = LoginManager(username: username, password: password)
        
        // for correct username/password values: keep error msg hidden
        if(loginManager.login()) {
            errorLabel.isHidden = true
            attemptsLabel.isHidden = true
            currentAttempt = 0 // reset counter
        }
        // for invalid user/pass: if less than max allowed attempts display error msgs
        else if (currentAttempt < maxAttempts){
            errorLabel.isHidden = false
            attemptsLabel.isHidden = false
            let attemptsLeft = maxAttempts - currentAttempt
            attemptsLabel.text = "Login attempts remaining: " + String(attemptsLeft)
        }
        // if current attempt greater than max allowed: disable button and display error msg
        else {
            submitBtn.isEnabled = false
            attemptsLabel.isHidden = true
            errorLabel.text = "Too many login attempts. Try again later."
        }
        
        // clear text fields after each attempt
        usernameField.text = ""
        passwordField.text = ""
    }
}
