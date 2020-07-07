//
//  ViewController.swift
//  MarioParty
//
//  Created by Dalal Alhazeem on 3/24/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import UIKit
import AVFoundation
var selectedPlayer = Player(name: "Mario")

class ViewController: UIViewController {
   
    @IBOutlet weak var playerImageView: UIImageView!
    var playerSoundEffect: AVAudioPlayer?
    var backgroundMusic: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        playBackgroundMusic(musicName: "BG.wav")
        
        // Do any additional setup after loading the view.
        //nextButton.isUserInteractionEnabled = false
    }
    func playBackgroundMusic(musicName: String){
        let path = Bundle.main.path(forResource: musicName, ofType: nil)!
        let url = URL(fileURLWithPath: path)
        do{
            backgroundMusic = try AVAudioPlayer(contentsOf: url)
            backgroundMusic?.play()
        }
        catch{
            //couldnt play file
            
        }
    }

    func playMusic(musicName: String){
        let path = Bundle.main.path(forResource: musicName, ofType: nil)!
        let url = URL(fileURLWithPath: path)
        do{
            playerSoundEffect = try AVAudioPlayer(contentsOf: url)
            playerSoundEffect?.play()
        }
        catch{
            //couldnt play file
            
        }
    }

    @IBAction func randomPlayer(_ sender: Any) {
        let randomPlayer = players.randomElement()!
        playerImageView.image = UIImage(named: randomPlayer.name)
        playMusic(musicName: randomPlayer.musicName())
        selectedPlayer = randomPlayer
    }
    
}

