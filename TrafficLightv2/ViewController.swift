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
    
    let lightISOn: Float = 1
    let lightisOff: Float = 0.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeColorButton.layer.cornerRadius = 10
        redLightView.layer.opacity = lightisOff
        yellowLightView.layer.opacity = lightisOff
        greenLightView.layer.opacity = lightisOff
    }
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.bounds.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.bounds.height / 2
        greenLightView.layer.cornerRadius = greenLightView.bounds.height / 2
    }

    @IBAction func changeColorButtonTapped() {
        if redLightView.layer.opacity == lightisOff && yellowLightView.layer.opacity == lightisOff && greenLightView.layer.opacity == lightisOff {
            redLightView.layer.opacity = lightISOn
            changeColorButton.setTitle("Next", for: .normal)
        } else if redLightView.layer.opacity == lightISOn {
            yellowLightView.layer.opacity = lightISOn
            redLightView.layer.opacity = lightisOff
        } else if yellowLightView.layer.opacity == lightISOn {
            greenLightView.layer.opacity = lightISOn
            yellowLightView.layer.opacity = lightisOff
        } else if greenLightView.layer.opacity == lightISOn {
            redLightView.layer.opacity = lightISOn
            greenLightView.layer.opacity = lightisOff
        }
    }
}
