//
//  EmojiDefinitionViewController.swift
//  Emoji-Dictionary
//
//  Created by Susana Benavidez on 5/1/18.
//  Copyright © 2018 Susana Benavidez. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var emojiDefinition: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
   
    var emoji = Emoji()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.theEmoji
        emojiDefinition.text = emoji.def
        birthYearLabel.text = "Release Date: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
    }

   
}
