//
//  ViewController.swift
//  SwiftDice_WillStanley
//
//  Created by William Stanley on 10/13/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var diceImageView: UIImageView!
    @IBOutlet var criticalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonGotPressed()
    {
        rollDice()
    }
    
    func rollDice()
    {
        //do cool stuff here
        print("WE ROLLIN DICE!")
        
        let rolledNumber = Int.random(in: 1...20)
        
        let imageName = "d\(rolledNumber)"
        
        diceImageView.image = UIImage(named: imageName)
        
        if (imageName == "d1")
        {
            criticalLabel.text = "YOU ROLLED... POORLY."
            
        }
        else if (imageName == "d20")
        {
            criticalLabel.text = "YOU ROLLED... WISELY."
        }
        else
        {
            criticalLabel.text = ""
        }
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        rollDice()
    }
    
    
}

