//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Gio Lucero on 2019-07-19.
//  Copyright © 2019 Gio Lucero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0
    

    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    
        // What appears when the screen loads - a random image chosen from the ball assets
        
        // the app loads up a randomized image upon opening the app
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
        newBallImage()
    
    }
    
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        newBallImage()
        
    }
    
    func newBallImage() {
        
        // putting in the code to reuse throughout the rest of the code
        randomBallNumber = Int.random(in: 0 ... 4)
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?){
        
        newBallImage()
        
    }

        
    }
    

