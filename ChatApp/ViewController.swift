//
//  ViewController.swift
//  ChatApp
//
//  Created by Dawid Was on 18/01/2019.
//  Copyright © 2019 Dawid Was. All rights reserved.
//

import UIKit
import Firebase
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loginAnony()
    }

    func loginAnony(){
        Auth.auth().signInAnonymously(){
        (user,error) in
    
        if let error = error {
            print("Cannot login: \(error)")
        } else {
            print("User UID \(user?.user.uid)")
            }
    }
    }
    
}

