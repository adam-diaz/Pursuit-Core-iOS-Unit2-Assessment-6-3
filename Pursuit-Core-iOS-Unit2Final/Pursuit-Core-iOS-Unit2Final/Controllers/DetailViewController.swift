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
    
    var redValue: Float = 0.0 {
        didSet {
            redLabel.text = String(format: "%.02f", redSliderControl.value)
        }
    }
    
    
    var greenValue: Float = 0.0 {
        didSet {
            greenLabel.text = String(format: "%.02f", greenSliderControl.value)
        }
    }
    
    
    var blueValue: Float = 0.0 {
        didSet {
            blueLabel.text = String(format: "%.02f", blueSliderControl.value)
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
        imageView.backgroundColor = UIColor(displayP3Red: CGFloat(detailColorVC.red / 255), green: CGFloat(detailColorVC.green / 255), blue: CGFloat(detailColorVC.blue / 255), alpha: 1.0)
        self.view.backgroundColor? = UIColor(displayP3Red: CGFloat(detailColorVC.red / 255), green: CGFloat(detailColorVC.green / 255), blue: CGFloat(detailColorVC.blue / 255), alpha: 1.0)
        labelValues()
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
    
    func labelValues() {
        redLabel.text = String(format: "%.02f", Float(detailColorVC.red / 255))
        greenLabel.text = String(format: "%.02f", Float(detailColorVC.green / 255))
        blueLabel.text = String(format: "%.02f", Float(detailColorVC.blue / 255))
        alphaLabel.text = String(alphaValue)
    }
    
    func reset() {
        self.view.backgroundColor? = UIColor(displayP3Red: CGFloat(detailColorVC.red / 255), green: CGFloat(detailColorVC.green / 255), blue: CGFloat(detailColorVC.blue / 255), alpha: 1.0)
        labelValues()
        redSliderControl.value = Float(detailColorVC.red / 255)
        greenSliderControl.value = Float(detailColorVC.green / 255)
        blueSliderControl.value = Float(detailColorVC.blue / 255)
        alphaStepperControl.value = 1.0
        alphaLabel.text = String(alphaStepperControl.value)
    }
    
    @IBAction func redSliderChanged(_ sender: UISlider) {
        redValue = sender.value
        self.view.backgroundColor? = UIColor(displayP3Red: CGFloat(redValue), green: CGFloat(greenSliderControl.value), blue: CGFloat(blueSliderControl.value), alpha: CGFloat(alphaStepperControl.value))
    }
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        greenValue = sender.value //20
        self.view.backgroundColor? = UIColor(displayP3Red: CGFloat(redSliderControl.value), green: CGFloat(greenValue), blue: CGFloat(blueSliderControl.value), alpha: CGFloat(alphaStepperControl.value))
    }
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        blueValue = sender.value
        self.view.backgroundColor? = UIColor(displayP3Red: CGFloat(redSliderControl.value), green: CGFloat(greenSliderControl.value), blue: CGFloat(blueValue), alpha: CGFloat(alphaStepperControl.value))
    }
    
    
    @IBAction func alphaStepperChanged(_ sender: UIStepper) {
        alphaValue = sender.value
        self.view.backgroundColor? = UIColor(displayP3Red: CGFloat(redSliderControl.value), green: CGFloat(greenSliderControl.value), blue: CGFloat(blueSliderControl.value), alpha: CGFloat(alphaValue))
        
    }
    
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        reset()
            }
    
}


