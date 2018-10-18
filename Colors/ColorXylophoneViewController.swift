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
        
        greenKey.layer.cornerRadius = 20
        tealKey.layer.cornerRadius = 20
        blueKey.layer.cornerRadius = 20
        purpleKey.layer.cornerRadius = 20
        redKey.layer.cornerRadius = 20
        orangeKey.layer.cornerRadius = 20
        yellowKey.layer.cornerRadius = 20

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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
