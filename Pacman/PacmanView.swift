//
//  PacmanView.swift
//  Pacman
//
//  Created by Fernando on 07/10/2018.
//  Copyright © 2018 UPM. All rights reserved.
//

import UIKit

@IBDesignable
class PacmanView: UIView {
    
    var a0: Double = 0
    var a1: Double = (Double.pi * 2)

    override func draw(_ rect: CGRect) {
      
        let w = bounds.size.width
        let h = bounds.size.height
        let c = CGPoint(x: w/2, y: h/2)
        let r = min(w, h)/2
        
        let path = UIBezierPath()
        
        path.move(to: c)
        path.addArc(withCenter: c,
                    radius: r,
                    startAngle: CGFloat(a0),
                    endAngle: CGFloat(a1),
                    clockwise: true)
        path.close()
        
        UIColor.yellow.setFill()
        path.fill()
        UIColor.black.setStroke()
        path.stroke()
        
    }
  

}
