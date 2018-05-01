//
//  EmojiTableViewController.swift
//  Emoji-Dictionary
//
//  Created by Susana Benavidez on 5/1/18.
//  Copyright © 2018 Susana Benavidez. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis = ["😀", "💩", "🏎", "💒", "🍎", "🥑"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    /*Need to answer two questions:
     
     How many things (rows) will there be in the table view.*/
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "ourSegue", sender: nil)
        
    }
    
}
