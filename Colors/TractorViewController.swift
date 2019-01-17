//
//  TractorViewController.swift
//  Colors
//
//  Created by Thomas Thorsager on 12/11/2018.
//  Copyright © 2018 TThorsager. All rights reserved.
//

import UIKit
import Lottie
import AVFoundation

class TractorViewController: UIViewController {
    
    var soundPlayer = AVAudioPlayer()
    

    @IBOutlet var animationView: LOTAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playBackgroundMusic()
        startAnimation()
        print("-->Tractor tractoring<--")
        // Do any additional setup after loading the view.
    }
    

    func startAnimation(){
        animationView.setAnimation(named: "tractor")
        animationView.loopAnimation = true
        animationView.play()
    }
    
    func playBackgroundMusic(){
        let path = Bundle.main.path(forResource: "bensound-ukulele", ofType: ".mp3")
        if let realPath = path {
            let soundURL = URL.init(fileURLWithPath: realPath)
            try! soundPlayer = AVAudioPlayer(contentsOf: soundURL)
            soundPlayer.prepareToPlay()
            soundPlayer.play()
            soundPlayer.numberOfLoops = -1
        }
    }

}
