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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.backgroundColor = .black
        
    }
    

    @IBAction func redSliderChanged(_ sender: UISlider) {
    }
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
    }
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
    }
    
    
    @IBAction func alphaStepperChanged(_ sender: UIStepper) {
    }
    
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
    }
    
}
