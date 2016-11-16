//
//  BezierPathView.swift
//  Dropit
//
//  Created by Valentina Henao on 12/7/15.
//  Copyright © 2015 Valentina Henao. All rights reserved.
//

import UIKit

class BezierPathView: UIView {

    private var bezierPaths = [String:UIBezierPath]()
    
    func setPath(path: UIBezierPath?, named name: String) {
        bezierPaths[name] = path
        setNeedsDisplay()
    }
    
     override func drawRect(rect: CGRect) {
        for (_, path) in bezierPaths {
        path.stroke()
        }
    }
    

}
