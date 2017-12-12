//
//  ViewController.swift
//  upperSlideView
//
//  Created by Miklos Kekkoi on 12/12/17.
//  Copyright © 2017 Miklos Kekkoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var myBarButton: UIButton!
    
    @IBAction func rotateButtonAction(_ sender: UIButton) {
        rotateMyBarButton()
    }
    var isRotated = false
    
    func rotateMyBarButton() {
        if isRotated {
        UIView.animate(withDuration: 1, animations: {
            self.myBarButton.imageView?.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
        })
            isRotated = false
        } else {
            UIView.animate(withDuration: 1, animations: {
                self.myBarButton.imageView?.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi * 2))
            })
            isRotated = true
        }
    
        
    }
}

