//
//  RoundButton.swift
//  calculatorAssignment
//
//  Created by Rex Karnufex on 2018-04-17.
//  Copyright © 2018 GWEB. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
    @IBInspectable var roundButton:Bool = false {
        didSet{
            if roundButton {
                layer.cornerRadius = frame.height / 2
                // sirjvi
            }
        }
    }
    override func prepareForInterfaceBuilder() {
        if roundButton{
            layer.cornerRadius = frame.height / 2
        }
    }
}
