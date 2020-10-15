//
//  ViewController.swift
//  Concentration
//
//  Created by Пушнова Алиса Сергеевна on 3/5/20.
//  Copyright © 2020 Alisa Pushnova. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!

    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["😹", "😻", "😹", "😻"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumbers = cardButtons.firstIndex(of: sender){
            flipCard(withEmoji: emojiChoices[cardNumbers], on: sender)
        } else {
            print("chosen card was not in cardButtons")
        }
    }
    

    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.08779424565, blue: 0.4230382618, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}

