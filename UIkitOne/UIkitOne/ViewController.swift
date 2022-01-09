//
//  ViewController.swift
//  UIkitOne
//
//  Created by Никита Горбунов on 09.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var numberRedSlider: UILabel!
    @IBOutlet weak var numberGreenSlider: UILabel!
    @IBOutlet weak var numberBlueSlider: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //number label slider
        numberRedSlider.text = String(redSlider.value)
        numberGreenSlider.text = String(greenSlider.value)
        numberBlueSlider.text = String(blueSlider.value)
        
    }
    
    func changeColor() {
        colorView.backgroundColor = UIColor(
            displayP3Red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value), alpha: 1
        )
    }

    @IBAction func redColorTone() {
        numberRedSlider.text = String(redSlider.value)
        changeColor()
    }
    
    @IBAction func greenColorTone() {
        numberGreenSlider.text = String(greenSlider.value)
        changeColor()
    }
    
    @IBAction func blueColorTone() {
        numberBlueSlider.text = String(blueSlider.value)
        changeColor()
    }
}

