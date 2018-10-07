//
//  ViewController.swift
//  Pacman
//
//  Created by Fernando on 07/10/2018.
//  Copyright © 2018 UPM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, PacmanViewDataSource {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var pacman: PacmanView!
    
    private var sliderValue: Double = 0 {
        didSet {
            pacman.setNeedsDisplay()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //pacman.a0 = 0
        //pacman.a1 = Double.pi * 2
        
        pacman.datasource = self
        
        slider.sendActions(for: .valueChanged)
    }

    
    @IBAction func updategSlider(_ sender: UISlider) {
        
        sliderValue = Double(slider.value)
        
        //pacman.a0 = v * Double.pi * 0.5
        //pacman.a1 = v * Double.pi * -0.5
        
        //pacman.setNeedsDisplay()
        
    }
    
    func initialAngle() -> Double {
        
        return Double(sliderValue * Double.pi * 0.5)
       
    }
    
    func finalAngle() -> Double {
        
        return Double(sliderValue * Double.pi * -0.5)
    }
}

