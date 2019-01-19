//
//  TVCChat.swift
//  ChatApp
//
//  Created by Dawid Was on 19/01/2019.
//  Copyright © 2019 Dawid Was. All rights reserved.
//

import UIKit

class TVCChat: UITableViewCell {

    @IBOutlet weak var laUserName: UILabel!
    @IBOutlet weak var laText: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setChat(chat:Chat){
        laUserName.tetx = chat.userName
        laText.text = chat.text
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
