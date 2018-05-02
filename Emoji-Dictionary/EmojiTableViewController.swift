//
//  EmojiTableViewController.swift
//  Emoji-Dictionary
//
//  Created by Susana Benavidez on 5/1/18.
//  Copyright © 2018 Susana Benavidez. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmojis()

    }

    /*Need to answer two questions:
     
     How many things (rows) will there be in the table view.*/
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = emojis[indexPath.row].theEmoji
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "ourSegue", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefVC = segue.destination as! EmojiDefinitionViewController
        emojiDefVC.emoji = sender as! Emoji
    }

    
    //["😀", "💩", "🏎", "💒", "🍎", "🥑"]

    func createEmojis() -> [Emoji] {
        let smiley = Emoji()
        smiley.theEmoji = "😀"
        smiley.def = "Smiley face"
        smiley.birthYear = 2010
        smiley.category = "Faces"
        
        let poop = Emoji()
        poop.theEmoji = "💩"
        poop.def = "Poop Face"
        poop.birthYear = 2012
        poop.category = "Stinky"
        
         
        let racecar = Emoji()
        racecar.theEmoji = "🏎"
        racecar.def = "Race Car"
        racecar.birthYear = 2013
        racecar.category = "Transportation"
         
        let chapel = Emoji()
        chapel.theEmoji = "💒"
        chapel.def = "Love Chapel"
        chapel.birthYear = 2011
        chapel.category = "Building"
         
        let apple = Emoji()
        apple.theEmoji = "🍎"
        apple.def = "Apple"
        apple.birthYear = 2010
        apple.category = "Fruit"
         
        let avocado = Emoji()
        avocado.theEmoji = "🥑"
        avocado.def = "Avocado"
        avocado.birthYear = 2011
        avocado.category = "Fruit"
        
        return [smiley, poop, racecar, chapel, apple, avocado]
    }
    
    
}
