//
//  ColorSelectViewController.swift
//  Colors
//
//  Created by Thomas Thorsager on 24/09/2018.
//  Copyright © 2018 TThorsager. All rights reserved.
//

import UIKit
import AVFoundation

class ColorSelectViewController: UIViewController {
    
    var soundPlayer = AVAudioPlayer()

    @IBOutlet weak var colorSelectImageView: UIImageView!
    
    
    @IBAction func greenButtonTapped(_ sender: Any) {
        colorSelectImageView.image = UIImage(named: "green.png")
        greenSound()
    }
    
    
    @IBAction func purpleButtonTapped(_ sender: Any) {
        colorSelectImageView.image = UIImage(named: "purple.png")
        purpleSound()
    }
    
    @IBAction func orangeButtonTapped(_ sender: Any) {
        colorSelectImageView.image = UIImage(named: "orange.png")
        orangeSound()
    }
    
    let color = [
        "green",
        "purple",
        "orange"
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorSelectImageView.image = UIImage(named: selectRandomColor())
        
    }
    
    
    func selectRandomColor() -> String {
        let randomNumber = Int(arc4random_uniform(UInt32(color.count)))
        
        return color[randomNumber]
    }
    
    func greenSound() {
        let path = Bundle.main.path(forResource: "Robot_blip", ofType: ".mp3")
        if let realPath = path {
            let soundURL = URL.init(fileURLWithPath: realPath)
            try! soundPlayer = AVAudioPlayer(contentsOf: soundURL)
            soundPlayer.prepareToPlay()
            soundPlayer.play()
            print("Green tapped")
        }
    }
        
    func purpleSound() {
        let path = Bundle.main.path(forResource: "Electronic_Chime", ofType: ".mp3")
        if let realPath = path {
            let soundURL = URL.init(fileURLWithPath: realPath)
            try! soundPlayer = AVAudioPlayer(contentsOf: soundURL)
            soundPlayer.prepareToPlay()
            soundPlayer.play()
            print("Purple tapped")
        }
    }
            
    func orangeSound() {
        let path = Bundle.main.path(forResource: "Robot_blip_2", ofType: ".mp3")
        if let realPath = path {
            let soundURL = URL.init(fileURLWithPath: realPath)
            try! soundPlayer = AVAudioPlayer(contentsOf: soundURL)
            soundPlayer.prepareToPlay()
            soundPlayer.play()
            print("Orange tapped")
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
