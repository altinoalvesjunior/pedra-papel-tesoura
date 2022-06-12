//
//  ViewController.swift
//  PedraPapelTesoura
//
//  Created by Altino Alves Júnior on 11/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    var computerScoreCount = 0
    var meScoreCount = 0

    @IBOutlet weak var computerScoreLabel: UILabel!
    @IBOutlet weak var meScoreLabel: UILabel!
    @IBOutlet weak var computerImageView: UIImageView!
    @IBOutlet weak var meImageView: UIImageView!
    
    @IBAction func playGame(_ sender: Any) {
        let computerImageNumber = Int.random(in: 1...3)
        let meImageNumber = Int.random(in: 1...3)
        
        setImage(imageView: computerImageView, number: computerImageNumber)
        setImage(imageView: meImageView, number: meImageNumber)
        
        calculateScore(computerNumber: computerImageNumber, meNumber: meImageNumber)
    }
    
    @IBAction func resetGame(_ sender: Any) {
        computerScoreCount = 0
        computerScoreLabel.text = String(computerScoreCount)
        
        meScoreCount = 0
        meScoreLabel.text = String(meScoreCount)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setImage(imageView: UIImageView, number: Int) {
        switch number {
        case 1:
            imageView.image = UIImage(named: "rock")
        case 2:
            imageView.image = UIImage(named: "paper")
        case 3:
            imageView.image = UIImage(named: "scissors")
        default:
            print("ERROR: Invalid Number!")
        }
    }
    
    func calculateScore(computerNumber: Int, meNumber: Int) {
        if computerNumber == 1 && meNumber == 1 {
            print("Empate")
        }
        
        if computerNumber == 1 && meNumber == 2 {
            meScoreCount += 1
        }
        
        if computerNumber == 1 && meNumber == 3 {
            computerScoreCount += 1
        }
        
        if computerNumber == 2 && meNumber == 2 {
            print("Empate")
        }
        
        if computerNumber == 2 && meNumber == 1 {
            computerScoreCount += 1
        }
        
        if computerNumber == 2 && meNumber == 3 {
            meScoreCount += 1
        }
        
        if computerNumber == 3 && meNumber == 3 {
            print("Empate")
        }
        
        if computerNumber == 3 && meNumber == 1 {
            meScoreCount += 1
        }
        
        if computerNumber == 3 && meNumber == 2 {
            computerScoreCount += 1
        }
        
        computerScoreLabel.text = String(computerScoreCount)
        meScoreLabel.text = String(meScoreCount)
    }
}

