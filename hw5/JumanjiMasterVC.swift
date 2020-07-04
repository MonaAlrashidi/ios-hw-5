//
//  JumanjiMasterVC.swift
//  hw5
//
//  Created by Badria Alqanai on 7/4/20.
//  Copyright © 2020 Badria Alqanai. All rights reserved.
//

import UIKit
import AVFoundation

class JumanjiMasterVC: UIViewController {
    var jumanjiImages = jumanjiData
    @IBOutlet weak var jumanjiImg0: UIButton!
    @IBOutlet weak var jumanjiImg1: UIButton!
    @IBOutlet weak var jumanjiImg2: UIButton!
    @IBOutlet weak var jumanjiImg3: UIButton!
    var backgroundMusic: AVAudioPlayer?
    
    @IBAction func jumanjiBtns(_ sender: UIButton) {
        print ("Jumanji",sender.tag)
        selectedCharacter = jumanjiData[sender.tag]
        performSegue(withIdentifier: "identifier", sender: nil)
    }
    
    var selectedCharacter: Movie = Movie(character: "", aka: "", sound: "", strengths: ["",""])
    
    func setJumanjiImages (){
        jumanjiImg0.setBackgroundImage(UIImage(named: jumanjiData[0].character), for: .normal)
        jumanjiImg1.setBackgroundImage(UIImage(named: jumanjiData[1].character), for: .normal)
        jumanjiImg2.setBackgroundImage(UIImage(named: jumanjiData[2].character), for: .normal)
        jumanjiImg3.setBackgroundImage(UIImage(named: jumanjiData[3].character), for: .normal)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        setJumanjiImages()
        playMusic()
    }
    override func prepare (for segue: UIStoryboardSegue, sender: Any?){
        guard let controller = segue.destination as? JumanjiDetailsVC else {
            fatalError()
        }
        controller.jumanjData = selectedCharacter
    }
    func playMusic(){
        
        let path = Bundle.main.path(forResource: "jumanji_drums.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            backgroundMusic = try AVAudioPlayer(contentsOf: url)
            backgroundMusic?.play()
        } catch {
            // couldn't load file :(
        }
    }
}


