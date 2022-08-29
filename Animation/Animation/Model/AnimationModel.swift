//
//  AnimationModel.swift
//  Animation
//
//  Created by Haydar Bekmuradov on 29.08.22.
//

import Foundation

struct AnimationModel {
    var myAnimation: String {
        if let animation = AnimationType.allCases.randomElement()?.rawValue {
            return animation
        } else {
            return "somethink went wrong with animation"
        }
    }

    var myCurve: String {
        if let curve = Curve.allCases.randomElement()?.rawValue {
            return curve
        } else {
            return "somethink went wrong with curve"
        }
    }

    var myProperties: String {
        if let properties = Properties.allCases.randomElement()?.rawValue {
            return properties
        } else {
            return "somethink went wrong with properties"
        }
    }
}
