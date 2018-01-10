//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Mrunal Bhatt on 1/9/18.
//  Copyright © 2018 Sonal. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    
    @IBOutlet weak var imageResult: UIImageView!
    
    
    var imageName : String!
    var labelString : String!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        labelResult.text = labelString
        
        imageResult.image = UIImage(named: imageName)

        // Do any additional setup after loading the view.
    }

    @IBAction func playAgain(_ sender: Any)
    {
        self.dismiss(animated: true, completion: nil)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
