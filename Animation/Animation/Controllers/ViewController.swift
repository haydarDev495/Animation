//
//  ViewController.swift
//  Animation
//
//  Created by Haydar Bekmuradov on 29.08.22.
//

import Spring
import UIKit

class ViewController: UIViewController {
    var animationModel = AnimationModel()
    
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var propertiesLabel: UILabel!
    
    @IBOutlet var springView: SpringView!
    
    @IBAction func randomButtonAction(_ sender: SpringButton) {
        setupUI()
    }
    
    private func setupUI() {
        setupLabels()
        setupView()
    }
    
    private func setupLabels() {
        typeLabel.text = "Type: " + animationModel.myAnimation
        curveLabel.text = "Curve: " + animationModel.myCurve
        propertiesLabel.text = "Properties: " + animationModel.myProperties
    }
    
    private func setupView() {
        springView.delay = 1
        springView.repeatCount = 3
        springView.animation = animationModel.myAnimation
        springView.curve = animationModel.myCurve
        springView.animate()
    }
}
