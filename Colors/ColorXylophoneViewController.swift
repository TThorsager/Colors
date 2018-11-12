//
//  ColorPianoViewController.swift
//  Colors
//
//  Created by Thomas Thorsager on 15/10/2018.
//  Copyright © 2018 TThorsager. All rights reserved.
//  Sounds from Freesound.org/people/dwengomes

import UIKit
import AVFoundation

class ColorXylophoneViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["a6", "b6", "c7", "d6", "e6", "f6", "g6"]
    var soundNameSelected : String = ""

    
    @IBOutlet weak var greenKey: UIButton!
    @IBOutlet weak var tealKey: UIButton!
    @IBOutlet weak var blueKey: UIButton!
    @IBOutlet weak var purpleKey: UIButton!
    @IBOutlet weak var redKey: UIButton!
    @IBOutlet weak var orangeKey: UIButton!
    @IBOutlet weak var yellowKey: UIButton!
    
    @IBOutlet weak var guideLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guideLabel.text = "Tap a button to change the color"
        
        greenKey.applyButtonDesign()
        tealKey.applyButtonDesign()
        blueKey.applyButtonDesign()
        purpleKey.applyButtonDesign()
        redKey.applyButtonDesign()
        orangeKey.applyButtonDesign()
        yellowKey.applyButtonDesign()

    }
    
    
    @IBAction func keyTapped(_ sender: UIButton) {
        guideLabel.text = ""
        
        soundNameSelected = soundArray[sender.tag - 1]
        
        print(soundNameSelected)
        
        playSound()
        
        //Altering the backgroundcolor to nearly match the color of the button/key tapped
        if sender.tag == 1 {
            view.layer.backgroundColor = #colorLiteral(red: 0.462745098, green: 0.8980392157, blue: 0.4823529412, alpha: 1)
        } else if sender.tag == 2 {
            view.layer.backgroundColor = #colorLiteral(red: 0.4274509804, green: 0.9882352941, blue: 0.8823529412, alpha: 1)
        } else if sender.tag == 3 {
            view.layer.backgroundColor = #colorLiteral(red: 0.4431372549, green: 0.6705882353, blue: 0.8784313725, alpha: 1)
        } else if sender.tag == 4 {
            view.layer.backgroundColor = #colorLiteral(red: 0.7294117647, green: 0.3529411765, blue: 0.8862745098, alpha: 1)
        } else if sender.tag == 5 {
            view.layer.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.3529411765, blue: 0.3529411765, alpha: 1)
        } else if sender.tag == 6 {
            view.layer.backgroundColor = #colorLiteral(red: 0.8980392157, green: 0.5725490196, blue: 0.3529411765, alpha: 1)
        } else if sender.tag == 7 {
            view.layer.backgroundColor = #colorLiteral(red: 0.8862745098, green: 0.8862745098, blue: 0.2235294118, alpha: 1)
        }
    }
    
    func playSound() {
        let pianoSound = Bundle.main.url(forResource: soundNameSelected, withExtension: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: pianoSound!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
    }

}

//extension UIButton {
//    func applyButtonDesign() {
//        self.layer.cornerRadius = 20
//
//        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
//        self.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
//        self.layer.shadowOpacity = 1
//        self.layer.shadowRadius = 0
//
//    }
//}
