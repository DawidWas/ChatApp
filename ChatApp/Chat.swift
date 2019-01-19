//
//  Chat.swift
//  ChatApp
//
//  Created by Dawid Was on 19/01/2019.
//  Copyright © 2019 Dawid Was. All rights reserved.
//

import UIKit

class Chat {
    var userName: String?
    var text: String?
    var DatePost: String?
    
    init(userName: String, text: String, DatePost: String) {
        self.userName = userName
        self.text = text
        self.DatePost = DatePost
        
    }
}
