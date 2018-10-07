//
//  PacmanView.swift
//  Pacman
//
//  Created by Fernando on 07/10/2018.
//  Copyright © 2018 UPM. All rights reserved.
//

import UIKit

protocol PacmanViewDataSource: class { //class se pone porque hemos definido el datasource con weak
    
    func initialAngle() -> Double
    func finalAngle() -> Double
}

@IBDesignable
class PacmanView: UIView {
    
    weak var datasource: PacmanViewDataSource!
    
    //var a0: Double = 0
    //var a1: Double = (Double.pi * 2)

    override func draw(_ rect: CGRect) {
      
        let w = bounds.size.width
        let h = bounds.size.height
        let c = CGPoint(x: w/2, y: h/2)
        let r = min(w, h)/2
        
        let path = UIBezierPath()
        
        path.move(to: c)
        path.addArc(withCenter: c,
                    radius: CGFloat(r),
                    startAngle: CGFloat(datasource.initialAngle()),
                    endAngle: CGFloat(datasource.finalAngle()),
                    clockwise: true)
        path.close()
        
        UIColor.yellow.setFill()
        path.fill()
        UIColor.black.setStroke()
        path.stroke()
        
    }
  

}
