//
//  ViewController.swift
//  AppFillView
//
//  Created by Mac on 01.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet var redLable: UILabel!
    @IBOutlet var greenLable: UILabel!
    @IBOutlet var blueLable: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var textField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // MARK: View
        
        mainView.backgroundColor = .white
        mainView.layer.cornerRadius = 15
        
        // MARK: Label
        
        redLable.text = "1.00"
        greenLable.text = "1.00"
        blueLable.text = "1.00"
        
        // MARK: Text Field
        
        textField.text = ""
        textField.textColor = .black
        
        // MARK: Slider
        
        redSlider.value = 1
        redSlider.minimumValue = 1
        redSlider.maximumValue = 100
        redSlider.thumbTintColor = .red
        
        greenSlider.value = 30
        greenSlider.minimumValue = 1
        greenSlider.maximumValue = 100
        greenSlider.thumbTintColor = .green
        
        blueSlider.value = 60
        blueSlider.minimumValue = 1
        blueSlider.maximumValue = 100
        blueSlider.thumbTintColor = .blue
    }

    @IBAction func redSliderAction(_ sender: Any) {
        redLable.text = String(Int(redSlider.value))
        if redSlider.value != 100 {
            mainView.backgroundColor = .white
            textField.text = "Цвет: Белый"
        } else {
            mainView.backgroundColor = .red
            textField.text = "Цвет: Красный"
        }
    }
    
    @IBAction func greenSliderAction(_ sender: Any) {
        greenLable.text = String(Int(greenSlider.value))
        if greenSlider.value != 100 {
            mainView.backgroundColor = .white
            textField.text = "Цвет: Белый"
        } else {
            mainView.backgroundColor = .green
            textField.text = "Цвет: Зеленый"
        }
    }
    
    
    @IBAction func blueSliderAction(_ sender: Any) {
        blueLable.text = String(Int(blueSlider.value))
        if blueSlider.value != 100 {
            mainView.backgroundColor = .white
            textField.text = "Цвет: Белый"
        } else {
            mainView.backgroundColor = .blue
            textField.text = "Цвет: Синий"
        }
    }
}

