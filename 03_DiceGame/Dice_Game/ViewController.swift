//
//  ViewController.swift
//  Dice_Game
//
//  Created by Ariel Ko on 2021/5/12.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["Dice1", "Dice2", "Dice3", "Dice4", "Dice5", "Dice6"]
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var dice1ImageView: UIImageView!
    @IBOutlet weak var dice2ImageView: UIImageView!
    
    @IBAction func rollAction(_ sender: UIButton) {
        updateDiceImage()
    }
     
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImage()
    }
    
    func updateDiceImage() {
        randomDiceIndex1 = Int(arc4random_uniform(UInt32(diceArray.count)))
        randomDiceIndex2 = Int(arc4random_uniform(UInt32(diceArray.count)))
        
        dice1ImageView.image = UIImage(named: diceArray[randomDiceIndex1])
        dice2ImageView.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    //MARK:- 搖晃手機停止時動作
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        if motion == UIEvent.EventSubtype.motionShake {
            updateDiceImage()
        }

    }


}

