//
//  ViewController.swift
//  Pacman
//
//  Created by Fernando on 07/10/2018.
//  Copyright © 2018 UPM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var pacman: PacmanView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pacman.a0 = 0
        pacman.a1 = Double.pi * 2
        
        slider.sendActions(for: .valueChanged)
    }

    
    @IBAction func updategSlider(_ sender: UISlider) {
        
        let v = Double(slider.value)
        
        pacman.a0 = v * Double.pi * 0.5
        pacman.a1 = v * Double.pi * -0.5
        
        pacman.setNeedsDisplay()
        
    }

}

