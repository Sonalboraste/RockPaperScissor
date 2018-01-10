//
//  ViewController.swift
//  Roshambo
//
//  Created by Mrunal Bhatt on 1/9/18.
//  Copyright © 2018 Sonal. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var buttonRock: UIButton!
    @IBOutlet weak var buttonPaper: UIButton!    
    @IBOutlet weak var buttonScissor: UIButton!
    
    var youPlay : Int!
    
    var opponentPlay : Int!

    enum RPS : Int
    {
       case Rock = 0
       case Paper = 1
       case Scissor = 2
        
        func duel(rps: RPS) -> String
        {
            switch (self, rps)
            {
            case (.Rock, .Scissor), (.Paper, .Rock), (.Scissor, .Paper):
                return winningString(rps1: self,rps2: rps) + " You win."
            case (.Rock, .Paper), (.Paper, .Scissor), (.Scissor, .Rock):
                return winningString(rps1: self,rps2: rps) + " You lose."
            default:
                return "It's a tie."
            }
        }
        
        func winningString(rps1: RPS, rps2: RPS) -> String
        {
            switch (rps1, rps2)
            {
                case (.Paper,.Rock), (.Rock,.Paper):
                    return "Paper Covers Rock."
                case (.Rock,.Scissor), (.Scissor,.Rock):
                    return "Rock Crushes Scissors."
                default:
                    return "Scissors Cut Paper."
            }
        }
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func playRock(_ sender: Any)
    {
        
        let winningString  = RPS.Rock.duel(rps: ViewController.RPS(rawValue: generateOpponentsRandomPlay())!)
        
        print(winningString)
        
        var controller : ResultViewController
        
        controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        
        var imageNameValue = winningString
        
        imageNameValue = imageNameValue.substring(to: imageNameValue.characters.index(of: ".")!)
        imageNameValue = imageNameValue.replacingOccurrences(of: " ", with: "")
        
        
        controller.imageName = imageNameValue
    
        
        controller.labelString = winningString
        
        present(controller, animated: true, completion: nil)
        
        
    }

    
    @IBAction func playPaper(_ sender: Any)
    {
        
    }
    
    
    @IBAction func playScissor(_ sender: Any)
    {
        
    }

    
    func generateOpponentsRandomPlay() -> Int
    {
        let opponentAction = arc4random() % 3
        
        return Int(opponentAction)
    }
}

