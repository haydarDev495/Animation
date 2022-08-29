//
//  ActivityVC.swift
//  Animation
//
//  Created by Haydar Bekmuradov on 29.08.22.
//

import NVActivityIndicatorView
import NVActivityIndicatorViewExtended
import UIKit

class ActivityVC: UIViewController, NVActivityIndicatorViewable {
    @IBAction func randomIndicatorButtonAction(_ sender: UIButton) {
        guard let indicatorType: NVActivityIndicatorType = .allCases.randomElement() else { return }

        startAnimating(type: indicatorType)

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            self.stopAnimating()
        }
    }
}
