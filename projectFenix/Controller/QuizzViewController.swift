//
//  QuizzViewController.swift
//  projectFenix
//
//  Created by LAUGA Aristide on 02/10/2019.
//  Copyright © 2019 Apprendre. All rights reserved.
//

import UIKit

class QuizzViewController: UIViewController {

    var speechService = SpeechService()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func playSummaryQuizzOneButton(_ sender: UIButton) {
        speechService.say("Couize 1, \n \n sur les bases de l'anglais")
    }

    @IBAction func playSummaryQuizzTwoButton(_ sender: UIButton) {
        speechService.say("Couize 2")
    }
    
    @IBAction func playSummaryQuizzThreeButton(_ sender: UIButton) {
        speechService.say("Couize 3")
    }
}
