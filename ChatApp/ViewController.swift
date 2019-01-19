//
//  ViewController.swift
//  ChatApp
//
//  Created by Dawid Was on 18/01/2019.
//  Copyright © 2019 Dawid Was. All rights reserved.
//

import UIKit
import Firebase
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
   // var ref = Database.database().reference()
    var ref = DatabaseReference.init()
    var userName:String?
    
    @IBOutlet weak var laChatList: UITableView!
    
    
    @IBOutlet weak var txtChatText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loginAnony()
        
        self.ref = Database.database().reference()
        
        laChatList.delegate = self
        laChatList.dataSource = self
    }
    
    var listOfChatInfo = [Chat]()
    func loadChatRoom(){
        
        self.ref.child("chat").queryOrdered(byChild: "postDate").observe(.value, with: {
            (DataSnapshot) in
            //
            self.listOfChatInfo.removeAll()
            
            if let DataSnapshot = DataSnapshot.children.allObjects as? [DataSnapshot]{
                
                for snap in DataSnapshot {
                    
                    if let postData = snap.value as? [String:AnyObject]{
                        let userName = postData["name"] as? String
                        let text = postData["text"] as? String
                        
                        var postDate: CLong
                        if let postDateIn = postData["postDate"] as? CLong {
                            postDate = postDateIn
                        }
                        
                    }
                }
            }
            
        })
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
    
    
    @IBAction func buSendToRoom(_ sender: Any) {
        
        let dic = [ "Text" : txtChatText.text,
                    "name" : NSUserName,
                    "postDate" : ServerValue.timestamp()] as [String:Any]
        self.ref.child("chat").childByAutoId().setValue(dic)
    }
}

