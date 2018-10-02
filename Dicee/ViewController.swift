//
//  ViewController.swift
//  Dicee
//
//  Created by Victor Hugo on 10/1/18.
//  Copyright © 2018 Vintage Robot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let imageElement = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton)
    {
        
        updateDiceImages()
    }
    
    func updateDiceImages()
    {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(5))
        
        diceImageView1.image = UIImage(named : imageElement[randomDiceIndex1])
        diceImageView2.image = UIImage(named: imageElement[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
    }
}

