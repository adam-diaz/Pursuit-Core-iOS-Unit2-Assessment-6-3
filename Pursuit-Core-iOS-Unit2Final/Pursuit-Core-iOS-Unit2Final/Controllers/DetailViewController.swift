//
//  ColorViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Adam Diaz on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var colorLabel: UILabel!
    
    @IBOutlet weak var redLabel: UILabel!
    
    @IBOutlet weak var redSliderControl: UISlider!
    
    @IBOutlet weak var greenLabel: UILabel!
    
    @IBOutlet weak var greenSliderControl: UISlider!
    
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var blueSliderControl: UISlider!
    
    @IBOutlet weak var alphaLabel: UILabel!
    
    @IBOutlet weak var alphaStepperControl: UIStepper!
    
    var redValue: Float = 215 {
        didSet {
            redLabel.text = String(format: "%0.f", redSliderControl.value)
        }
    }
    
    
    var greenValue: Float = 130 {
        didSet {
            greenLabel.text = String(format: "%0.f", greenSliderControl.value)
        }
    }
    
    
    var blueValue: Float = 20 {
        didSet {
            blueLabel.text = String(format: "%0.f", blueSliderControl.value)
        }
    }
    
    var alphaValue: Double = 1.0 {
        didSet {
            alphaLabel.text = String(format: "%0.f", alphaStepperControl.value)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.backgroundColor = .black
        redConfigureSlider()
        greenConfigureSlider()
        blueConfigureSlider()
        alphaStepper()
    }
    
    func redConfigureSlider() {
        redSliderControl.minimumValue = 0
        redSliderControl.maximumValue = 255
        redSliderControl.value = redValue
    }
    
    func greenConfigureSlider() {
        greenSliderControl.minimumValue = 0
        greenSliderControl.maximumValue = 255
        greenSliderControl.value = greenValue
    }
    
    func blueConfigureSlider() {
        blueSliderControl.minimumValue = 0
        blueSliderControl.maximumValue = 255
        blueSliderControl.value = blueValue
    }
    
    func alphaStepper() {
        alphaStepperControl.minimumValue = 0.0
        alphaStepperControl.maximumValue = 1.0
        alphaStepperControl.stepValue = 0.1
        alphaStepperControl.value = alphaValue
    }
    
    
    
    
    
    
    
    @IBAction func redSliderChanged(_ sender: UISlider) {
        redValue = sender.value
    }
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        greenValue = sender.value
    }
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        blueValue = sender.value
    }
    
    
    @IBAction func alphaStepperChanged(_ sender: UIStepper) {
        alphaValue = sender.value
        
    }
    
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
    }
    
}


