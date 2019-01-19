//
//  VCLogin.swift
//  ChatApp
//
//  Created by Dawid Was on 19/01/2019.
//  Copyright © 2019 Dawid Was. All rights reserved.
//

import UIKit

class VCLogin: UIViewController {
    
    @IBOutlet weak var laUserName: UITextField!
    var UserName: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func buLogin(_ sender: Any) {
        
        shouldPerformSegue(withIdentifier: "ChatRoom", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ChatRoom" {
            if let dis = segue.destination as? ViewController {
                dis.UserName = laUserName.text
            }
        }
    }
}
