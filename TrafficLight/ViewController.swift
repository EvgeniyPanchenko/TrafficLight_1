//
//  ViewController.swift
//  TrafficLight
//
//  Created by Евгений Панченко on 18.08.2021.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    
    var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        redLight.layer.cornerRadius = redLight.frame.size.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.size.width / 2
    }
    
    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        
        case .red:
            greenLight.alpha = 0.3
            redLight.alpha = 1
            currentLight = .yellow
        case .yellow:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            currentLight = .green
        case .green:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            currentLight = .red
        }
    }
}
