//
//  ViewController.swift
//  Colors
//
//  Created by Thomas Thorsager on 24/09/2018.
//  Copyright © 2018 TThorsager. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var colorShakeButton: UIButton!
    @IBOutlet weak var colorSwapButton: UIButton!
    @IBOutlet weak var colorSelectButton: UIButton!
    @IBOutlet weak var colorPianoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorShakeButton.layer.cornerRadius = 30
        colorSelectButton.layer.cornerRadius = 30
        colorSwapButton.layer.cornerRadius = 30
        colorPianoButton.layer.cornerRadius = 30

    }


}

