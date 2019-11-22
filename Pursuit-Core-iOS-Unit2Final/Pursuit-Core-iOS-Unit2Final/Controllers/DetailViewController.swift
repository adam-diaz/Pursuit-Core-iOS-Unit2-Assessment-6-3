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
    
    var detailColorVC: Crayon!
    
    var redValue: Float = 0.5 {
        didSet {
            redLabel.text = String(format: "%.01f", redSliderControl.value)
        }
    }
    
    
    var greenValue: Float = 0.5 {
        didSet {
            greenLabel.text = String(format: "%.01f", greenSliderControl.value)
        }
    }
    
    
    var blueValue: Float = 0.5 {
        didSet {
            blueLabel.text = String(format: "%.01f", blueSliderControl.value)
        }
    }
    
    var alphaValue: Double = 1.0 {
        didSet {
            alphaLabel.text = String(format: "%.01f", alphaStepperControl.value)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorLabel?.text = detailColorVC.name
        self.view.backgroundColor? = UIColor(displayP3Red: CGFloat(detailColorVC.red / 255), green: CGFloat(detailColorVC.green / 255), blue: CGFloat(detailColorVC.blue / 255), alpha: 1.0)
        redConfigureSlider()
        greenConfigureSlider()
        blueConfigureSlider()
        alphaStepper()
    }
    
    func redConfigureSlider() {
        redSliderControl.minimumValue = 0.0
        redSliderControl.maximumValue = 1.0
        redSliderControl.value = Float(detailColorVC.red / 255)
    }
    
    func greenConfigureSlider() {
        greenSliderControl.minimumValue = 0.0
        greenSliderControl.maximumValue = 1.0
        greenSliderControl.value = Float(detailColorVC.green / 255)
    }
    
    func blueConfigureSlider() {
        blueSliderControl.minimumValue = 0.0
        blueSliderControl.maximumValue = 1.0
        blueSliderControl.value = Float(detailColorVC.blue / 255)
    }
    
    func alphaStepper() {
        alphaStepperControl.minimumValue = 0.0
        alphaStepperControl.maximumValue = 1.0
        alphaStepperControl.stepValue = 0.1
        alphaStepperControl.value = alphaValue
    }
    
    
    
    
    
    
    
    @IBAction func redSliderChanged(_ sender: UISlider) {
        redValue = sender.value
        self.view.backgroundColor? = UIColor(displayP3Red: CGFloat(redValue), green: CGFloat(greenValue), blue: CGFloat(blueValue), alpha: 1.0)
    }
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        greenValue = sender.value
        self.view.backgroundColor? = UIColor(displayP3Red: CGFloat(redValue), green: CGFloat(greenValue), blue: CGFloat(blueValue), alpha: 1.0)
    }
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        blueValue = sender.value
        self.view.backgroundColor? = UIColor(displayP3Red: CGFloat(redValue), green: CGFloat(greenValue), blue: CGFloat(blueValue), alpha: 1.0)
    }
    
    
    @IBAction func alphaStepperChanged(_ sender: UIStepper) {
        alphaValue = sender.value
        self.view.backgroundColor? = UIColor(displayP3Red: CGFloat(redValue), green: CGFloat(greenValue), blue: CGFloat(blueValue), alpha: CGFloat(alphaValue))
        
    }
    
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
    }
    
}


