//
//  ColorShakeViewController.swift
//  Colors
//
//  Created by Thomas Thorsager on 24/09/2018.
//  Copyright © 2018 TThorsager. All rights reserved.
//  with the exception of music Copyright ©. All rights reserved to Benjamin TISSOT (also known as Bensound)
//  https://www.bensound.com/royalty-free-music/track/buddy
//

import UIKit
import AVFoundation

class ColorShakeViewController: UIViewController {

    
    @IBOutlet weak var colorShakeImageView: UIImageView!
    @IBOutlet weak var guideLabel: UILabel!
    
    var soundPlayer = AVAudioPlayer()
    
    let color = [
        "blue",
        "green",
        "orange",
        "purple",
        "red",
        "teal",
        "yellow"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorShakeImageView.image = UIImage(named: selectRandomColor())
        guideLabel.text = "Shake the phone to change the color"
        let path = Bundle.main.path(forResource: "bensound-buddy", ofType: ".mp3")
        if let realPath = path {
            let soundURL = URL.init(fileURLWithPath: realPath)
            try! soundPlayer = AVAudioPlayer(contentsOf: soundURL)
            soundPlayer.prepareToPlay()
            soundPlayer.play()
            soundPlayer.numberOfLoops = -1
        }

    }
    
    func selectRandomColor() -> String {
        let randomNumber = Int(arc4random_uniform(UInt32(color.count)))
        
        return color[randomNumber]
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        colorShakeImageView.image = UIImage(named: selectRandomColor())
        print("-->Shaked<--")
        guideLabel.text = ""
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
