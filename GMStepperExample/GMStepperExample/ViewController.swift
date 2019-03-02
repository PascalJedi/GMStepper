//
//  ViewController.swift
//  GMStepperExample
//
//  Created by Gunay Mert Karadogan on 4/7/15.
//  Copyright (c) 2015 Gunay Mert Karadogan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GMStepperDelegate {

    @IBOutlet weak var stepper: GMStepper!
    override func viewDidLoad() {
        super.viewDidLoad()
        stepper.addTarget(self, action: #selector(ViewController.stepperValueChanged), for: .valueChanged)
        
        stepper.delegate = self
    }

    @objc func stepperValueChanged(stepper: GMStepper) {
        print(stepper.value, terminator: "")
    }
    
    func leftButtonPressed(_ sender: GMStepper) {
        print("left button pressed")
    }
    
    func rightButtonPressed(_ sender: GMStepper) {
        print("right button pressed")
    }
    
    func valuePressed(_ sender: GMStepper) {
        print("value button pressed")
    }
}
