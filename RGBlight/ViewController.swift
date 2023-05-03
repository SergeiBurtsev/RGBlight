//
//  ViewController.swift
//  RGBlight
//
//  Created by Serj on 03.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        redLabel.text = String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
        colorView.layer.cornerRadius = 25
        
    }
    
    private func chooseColor() {
        let redSliderValue = CGFloat(redSlider.value)
        let greenSliderValue = CGFloat(greenSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)
        
        colorView.backgroundColor = UIColor(red: redSliderValue,
                                           green: greenSliderValue,
                                           blue: blueSliderValue,
                                           alpha: 1)
    }
    @IBAction func redSluerAction() {
        redLabel.text = String(round(100 * redSlider.value)/100)
        chooseColor()
    }
    
    @IBAction func greenSliderAction() {greenLabel.text = String(round(100 * greenSlider.value)/100)
        chooseColor()
    }
    
    
    @IBAction func blueSliderAction() {blueLabel.text = String(round(100 * blueSlider.value)/100)
        chooseColor()
    }
    
    
    
}
   
   
