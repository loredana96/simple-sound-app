//
//  ViewController.swift
//  MusicApp
//
//  Created by Loredana Todoran on 07/08/2019.
//  Copyright © 2019 Loredana Todoran. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer: AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(soundFileName : soundArray[sender.tag - 1])
    }
    func playSound(soundFileName : String) {
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
            }
        audioPlayer.play()
        }
    }


