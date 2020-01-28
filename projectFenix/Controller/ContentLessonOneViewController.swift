//
//  ContentLessonOneViewController.swift
//  projectFenix
//
//  Created by LAUGA Aristide on 02/10/2019.
//  Copyright © 2019 Apprendre. All rights reserved.
//

import UIKit
import AVFoundation

class ContentLessonOneViewController: UIViewController,AVSpeechSynthesizerDelegate {

    @IBOutlet weak var contentLessonOne: UITextView!
    @IBOutlet weak var lectureButton: UIButton!
    
    let speechService = SpeechService()
    
    override func viewDidAppear (_ animated: Bool) {
        
        super.viewDidAppear(animated)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        speechService.synthesizer.delegate = self
    
}
    
    @IBAction func playAndPause(_ sender: UIButton) {
        
        if !speechService.synthesizer.isSpeaking {
            
            speechService.say(" What is noun ?  A noun is a person,an animal, a place or a thing \n \n eg: a dog, a town, a phone, a melon, an orange, an egg, a beach etc. \n \n In writing , names of people, places, days,months, etc. \n begin with a capital letter. \n \n eg 1: Last summer I visited London. \n \n eg 2: The world largest desert is Sahara Desert etc.", language: "en-UK")
                
            } else if speechService.synthesizer.isSpeaking && !speechService.synthesizer.isPaused {
                
                speechService.synthesizer.pauseSpeaking(at: AVSpeechBoundary.immediate)
                
            } else if speechService.synthesizer.isPaused {
                speechService.synthesizer.continueSpeaking()
            }
        }
    
func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didPause utterance: AVSpeechUtterance) {
        lectureButton.setImage(UIImage(named: "play-button-inside-a-circle"), for: UIControl.State.normal)
    }
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didStart utterance: AVSpeechUtterance) {
        lectureButton.setImage(UIImage(named: "rounded-pause-button"), for: UIControl.State.normal)
    }
        
        
    
func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didContinue utterance: AVSpeechUtterance) {
        lectureButton.setImage(UIImage(named: "rounded-pause-button"), for: UIControl.State.normal)
    }
    
func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
        lectureButton.setImage(UIImage(named: "play-button-inside-a-circle"), for: UIControl.State.normal)
        
    }
    
    }

