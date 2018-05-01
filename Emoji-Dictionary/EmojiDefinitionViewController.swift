//
//  EmojiDefinitionViewController.swift
//  Emoji-Dictionary
//
//  Created by Susana Benavidez on 5/1/18.
//  Copyright © 2018 Susana Benavidez. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    
    @IBOutlet weak var emojiDefinition: UILabel!
    
    
    @IBOutlet weak var emojiLabel: UILabel!
   
    
    var emoji = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        if emoji == "😀" {
            emojiDefinition.text = "Smiley Face"
        }
        
        if emoji == "💩" {
            emojiDefinition.text = "Poop Face"
        }
        
        if emoji == "🏎" {
            emojiDefinition.text = "Race Car"
        }
        
        if emoji == "💒" {
            emojiDefinition.text = "Love Chapel"
        }
        
        if emoji == "🍎" {
            emojiDefinition.text = "Apple"
        }
        
        if emoji == "🥑" {
            emojiDefinition.text = "Avocado"
        }
    }

   
}
