//
//  ViewController.swift
//  HomeWork2
//
//  Created by Альбина Лега on 18/09/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = redLightView.frame.size.width/2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.size.width/2
        greenLightView.layer.cornerRadius = greenLightView.frame.size.width/2
    }
    
    @IBAction func nextButtonWasTapped() {
        if redLightView.alpha != 1 && yellowLightView.alpha != 1 {
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
            
        } else if yellowLightView.alpha != 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            
        } else {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        }
    }
    
}


