//
//  ColorPianoViewController.swift
//  Colors
//
//  Created by Thomas Thorsager on 15/10/2018.
//  Copyright © 2018 TThorsager. All rights reserved.
//

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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greenKey.layer.cornerRadius = 20
        tealKey.layer.cornerRadius = 20
        blueKey.layer.cornerRadius = 20
        purpleKey.layer.cornerRadius = 20
        redKey.layer.cornerRadius = 20
        orangeKey.layer.cornerRadius = 20
        yellowKey.layer.cornerRadius = 20

    }
    
    
    @IBAction func keyTapped(_ sender: UIButton) {

        soundNameSelected = soundArray[sender.tag - 1]
        
        print(soundNameSelected)
        
        playSound()
        
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
