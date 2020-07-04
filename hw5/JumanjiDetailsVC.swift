//
//  JumanjiDetailsVC.swift
//  hw5
//
//  Created by Badria Alqanai on 7/4/20.
//  Copyright © 2020 Badria Alqanai. All rights reserved.
//

import UIKit
import AVFoundation



class JumanjiDetailsVC: UIViewController {
    var jumanjData: Movie = Movie(character: "", aka: "", sound: "", strengths: ["",""])

    @IBOutlet weak var characterImg: UIImageView!
    @IBOutlet weak var characterName: UINavigationItem!
    @IBOutlet weak var aka: UILabel!
    @IBOutlet weak var strengthImg1: UIImageView!
    @IBOutlet weak var strengthImg2: UIImageView!
    @IBOutlet weak var strengthLabel1: UILabel!
    @IBOutlet weak var strengthLabel2: UILabel!
    @IBOutlet weak var sound: UIButton!
    @IBAction func soundBtn(_ sender: UIButton) {
        var voice: AVAudioPlayer?
        let path = Bundle.main.path(forResource: "sound.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            voice = try AVAudioPlayer(contentsOf: url)
            voice?.play()
        } catch {
            // couldn't load file :(
        }


    }

    
    func setSoundImage (){
        sound.setBackgroundImage(UIImage(named: "sound"), for: .normal)
    }
    func setMovieDetails (){
        characterName.title = jumanjData.character
        self.characterImg.image =  UIImage(named: jumanjData.character)
        self.aka.text = String(jumanjData.aka)
        self.strengthImg1.image = UIImage(named: jumanjData.strengths[0])
        self.strengthImg2.image = UIImage(named: jumanjData.strengths[1])
        self.strengthLabel1.text = String(jumanjData.strengths[0])
        self.strengthLabel2.text = String(jumanjData.strengths[1])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMovieDetails()
        setSoundImage()
        // Do any additional setup after loading the view.
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
