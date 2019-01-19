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
    
    var ref = Database.database().reference()
    @IBOutlet weak var txtChatText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loginAnony()
        
        self.ref = Database.database().reference()
        
    }

    func loginAnony(){
        Auth.auth().signInAnonymously(){
        (user,error) in
    
        if let error = error {
            print("Cannot login: \(error)")
        } else {
            print("User UID \(user?.user.uid ?? <#default value#>)")
            }
    }
    }
    
    
    @IBAction func buSendToRoom(_ sender: Any) {
        
        self.ref.child("chat").setValue("Dawid")
    }
    
}

