//
//  CurvedView.swift
//  UniSis
//
//  Created by Madushan Senavirathna on 2023-08-30.
//

import UIKit

class CurvedView: UIView {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let rect = self.bounds
        let y: CGFloat = rect.size.height - 150.0
        let curveTo: CGFloat = rect.size.height
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 0.0, y: y))
        bezierPath.addQuadCurve(
            to: CGPoint(x: rect.size.width, y: y),
            controlPoint: CGPoint(x: rect.size.width / 2.0, y: curveTo)
        )
      
        bezierPath.addLine(to: CGPoint(x: rect.size.width, y: 0.0))
        bezierPath.addLine(to: CGPoint(x: 0.0, y: 0.0))
        bezierPath.close()
     
        let maskForPath = CAShapeLayer()
        maskForPath.path = bezierPath.cgPath
    
        layer.mask = maskForPath
      
        backgroundColor = UIColor.red
    }
}
