//
//  ViewController.swift
//  TConverter
//
//  Created by Alex Ch. on 26.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsLabel: UILabel!{
        didSet{
            celsLabel.text = "0 Cº"
        }
    }
    @IBOutlet weak var farLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.minimumValue = 0
            slider.maximumValue = 100
            slider.value = 0
        }
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        let tempCelsius = Int(sender.value)
        celsLabel.text = String("\(tempCelsius) Cº")
        let tempFar = (tempCelsius * 9/5) + 32
        farLabel.text = String("\(tempFar) F")
    }
}
