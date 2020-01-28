//
//  DifficultyOfLessonOneViewController.swift
//  projectFenix
//
//  Created by LAUGA Aristide on 01/10/2019.
//  Copyright © 2019 Apprendre. All rights reserved.
//

import UIKit

class DifficultyOfLessonOneViewController: UIViewController {
    
    let speechService = SpeechService()
   
    let difficulty = ["Facile", "Moyen", "Difficile"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func tellEasyButton(_ sender: UIButton) {
        speechService.say("Facile")
    }
    
    @IBAction func tellMediumButton(_ sender: UIButton) {
        speechService.say("Moyen")
    }
    
    @IBAction func tellHardButton(_ sender: UIButton) {
        speechService.say("Difficile")
    }
    
}
