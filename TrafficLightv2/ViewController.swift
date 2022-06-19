//
//  ViewController.swift
//  TrafficLightv2
//
//  Created by user on 19.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var changeColorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeColorButton.layer.cornerRadius = 10
        redLightView.layer.cornerRadius = 64
        redLightView.layer.opacity = 0.5
        yellowLightView.layer.cornerRadius = 64
        yellowLightView.layer.opacity = 0.5
        greenLightView.layer.cornerRadius = 64
        greenLightView.layer.opacity = 0.5
    }

    @IBAction func changeColorButtonTapped() {
        if redLightView.layer.opacity == 0.5 && yellowLightView.layer.opacity == 0.5 && greenLightView.layer.opacity == 0.5 {
            redLightView.layer.opacity = 1
            changeColorButton.setTitle("Next", for: .normal)
        } else if redLightView.layer.opacity == 1 {
            yellowLightView.layer.opacity = 1
            redLightView.layer.opacity = 0.5
        } else if yellowLightView.layer.opacity == 1 {
            greenLightView.layer.opacity = 1
            yellowLightView.layer.opacity = 0.5
        } else if greenLightView.layer.opacity == 1 {
            redLightView.layer.opacity = 1
            greenLightView.layer.opacity = 0.5
        }
    }
}
