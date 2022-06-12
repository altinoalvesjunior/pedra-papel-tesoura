//
//  ViewController.swift
//  PedraPapelTesoura
//
//  Created by Altino Alves Júnior on 11/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var computerScoreLabel: UILabel!
    @IBOutlet weak var meScoreLabel: UILabel!
    @IBOutlet weak var computerImageView: UIImageView!
    @IBOutlet weak var meImageView: UIImageView!
    
    @IBAction func playGame(_ sender: Any) {
        let computerImageNumber = Int.random(in: 1...3)
        let meImageNumber = Int.random(in: 1...3)
        
        setImage(imageView: computerImageView, number: computerImageNumber)
        setImage(imageView: meImageView, number: meImageNumber)
    }
    
    @IBAction func resetGame(_ sender: Any) {
        computerScoreCount = 0
        computerScoreLabel.text = String(computerScoreCount)
        meScoreCount = 0
        meScoreLabel.text = String(meScoreCount)
    }
    
    var computerScoreCount = 0
    var meScoreCount = 0
    
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
        
    }
}

