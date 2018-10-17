//
//  ColorSwapViewController.swift
//  Colors
//
//  Created by Thomas Thorsager on 05/10/2018.
//  Copyright © 2018 TThorsager. All rights reserved.
//  With the exception of music Copyright ©. All rights reserved to Benjamin TISSOT (also known as Bensound)
//  https://www.bensound.com/royalty-free-music/track/smile

import UIKit
import AVFoundation

class ColorSwapViewController: UIViewController {
    
    var soundPlayer = AVAudioPlayer()
    var songPlayer : AVAudioPlayer!
    
    @IBOutlet weak var colorSwapImageView: UIImageView!
    
    
    @IBAction func colorSwapButtonTapped(_ sender: Any) {
        selectRandomColor()
    }
    
    let color = [
        "blue",
        "brown",
        "green",
        "orange",
        "purple",
        "red",
        "teal",
        "yellow"
    ]
    
    var randomColor = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectRandomColor()
        
        playBackgroundMusic()
    }
    
    func selectRandomColor() {
        randomColor = Int.random(in: 0 ... 7)
        colorSwapImageView.image = UIImage(named:color[randomColor])
        playSound()
        print("-->Color Swapped<--")
    }
    
    func playSound() {
        let path = Bundle.main.path(forResource: "Electronic_Chime", ofType: ".mp3")
        if let realPath = path {
            let soundURL = URL.init(fileURLWithPath: realPath)
            try! soundPlayer = AVAudioPlayer(contentsOf: soundURL)
            soundPlayer.prepareToPlay()
            soundPlayer.play()
        }
    }
    
    func playBackgroundMusic() {
        let url = Bundle.main.path(forResource: "bensound-smile", ofType: ".mp3")
        if let realUrl = url {
            let songUrl = URL.init(fileURLWithPath: realUrl)
            try! songPlayer = AVAudioPlayer(contentsOf: songUrl)
            songPlayer.prepareToPlay()
            songPlayer.play()
            songPlayer.numberOfLoops = -1
        }
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
