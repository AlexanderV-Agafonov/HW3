//
//  ViewController.swift
//  ColorMix
//
//  Created by Alexander Agafonov on 30.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var workView: UIView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSliders()
        setupColorLabels()
        setupView()
        
    }

    // MARK: - Action for slider
    @IBAction func redSliderAction() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        workView.backgroundColor =  UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        workView.backgroundColor =  UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        workView.backgroundColor =  UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
}

// MARK: - Setup UI
extension ViewController {
    private func setupSliders() {
        redSlider.value = 0.3
        greenSlider.value = 0.3
        blueSlider.value = 0.3
        
        redSlider.minimumValue = 0
        greenSlider.minimumValue = 0
        blueSlider.minimumValue = 0
        
        redSlider.maximumValue = 1
        greenSlider.maximumValue = 1
        blueSlider.maximumValue = 1
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        //        slider.minimumTrackTintColor = .yellow
        //        slider.maximumTrackTintColor = .red
        //        slider.thumbTintColor = .green
    }
    private func setupColorLabels() {
        redLabel.text = redSlider.value.formatted()
        greenLabel.text = greenSlider.value.formatted()
        blueLabel.text = blueSlider.value.formatted()
    }
    
    private func setupView(){
        workView.layer.cornerRadius = 20
        workView.backgroundColor =  UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
}
