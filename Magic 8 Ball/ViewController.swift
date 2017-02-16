//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jo Wong on 16/02/2017.
//  Copyright © 2017 Jo Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallNumber : Int = 0
    
    let ballArray = ["ball1" , "ball2" , "ball3" , "ball4" , "ball5"]
    
    @IBOutlet weak var ballImageView1: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        newBallImage()
        
           }

    func newBallImage(){
        
        randomBallNumber = Int(arc4random_uniform(5))
        
        ballImageView1.image = UIImage(named: ballArray[randomBallNumber])
        
    
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        newBallImage()
        
    }
    
}

