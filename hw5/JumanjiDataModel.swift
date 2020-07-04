//
//  JumanjiDataModel.swift
//  hw5
//
//  Created by Badria Alqanai on 7/4/20.
//  Copyright © 2020 Badria Alqanai. All rights reserved.
//

import UIKit


struct Movie{
    var character: String = ""
    var aka: String
    var sound: String
    var strengths: [String]
}

var jumanjiData = [
    Movie(character: "Finbar",aka: "Franklin Mouse Finbar", sound: "fSound", strengths: ["Zoology","Weapons Valet"]),
    Movie(character: "Bravestone", aka: "Dr Smolder Bravestone", sound: "bSound", strengths: ["Speed","Climbing"]),
    Movie(character: "Shelly", aka: "Professor Shelly Oberon", sound: "sSound", strengths: ["Cartography","Archeology"]),
    Movie(character: "Ruby", aka: "Killer of men", sound: "rSound", strengths: ["Karate","T'ai Chi"])
]

