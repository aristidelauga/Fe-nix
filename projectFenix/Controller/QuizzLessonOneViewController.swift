//
//  QuizzLessonOneViewController.swift
//  projectFenix
//
//  Created by LAUGA Aristide on 02/10/2019.
//  Copyright © 2019 Apprendre. All rights reserved.
//

import UIKit
import AVFoundation

class QuizzLessonOneViewController: UIViewController {

    var speechService = SpeechService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        speechService.say("What is a dog ?", language: "en-UK")

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sayChoiceOneButton(_ sender: UIButton) {
        speechService.say("a type of food", language: "en-UK")
        
    }
    

    @IBAction func sayChoiceTwoButton(_ sender: UIButton) {
        speechService.say("some kind of clothes", language: "en-UK")
        func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance){}
    }
    

    @IBAction func sayChoiceThreeButton(_ sender: UIButton) {
        speechService.say("a profession", language: "en-UK")
        func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance){}
    }
    
    @IBAction func sayChoiceFourButton(_ sender: UIButton) {
    speechService.say("An animal", language: "en-UK")
        func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance){}
    }
    
}
