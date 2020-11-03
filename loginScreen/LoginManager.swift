//
//  LoginManager.swift
//  loginScreen
//
//  Created by Linda 👱🏻‍♀️ on 2020-11-02.
//

import Foundation

class LoginManager {
    // create class level variables
    var username: String
    var password: String
    
    // create constructor (init)
    init(username:String, password:String) {
        self.username = username
        self.password = password
    }
    // method to validate correct username/password combo
    // return bool val to indicate whether login successful
    func login() -> Bool {
        if(username == "test" && password == "test") {
            return true
        } else {
            return false
        }
    }
}
