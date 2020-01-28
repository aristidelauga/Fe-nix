//
//  LessonsViewController.swift
//  projectFenix
//
//  Created by LAUGA Aristide on 02/10/2019.
//  Copyright © 2019 Apprendre. All rights reserved.
//

import UIKit
import AVFoundation

class LessonsViewController: UIViewController, AVSpeechSynthesizerDelegate {
    
    @IBOutlet weak var summaryLessonOne: UIButton!
    
    let lessons = Lesson.allLessons
    
    let speechService = SpeechService()

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
        speechService.synthesizer.delegate = self
        
    }
    
    @IBAction func playSummaryLessonOneButton(_ sender: UIButton) {
        
        if !speechService.synthesizer.isSpeaking {
        speechService.readSummary(lesson: lessons[0])
            
        }
        
        else if speechService.synthesizer.isSpeaking && !speechService.synthesizer.isPaused {
        speechService.synthesizer.pauseSpeaking(at: AVSpeechBoundary.immediate)
        }

        else if speechService.synthesizer.isPaused {
            speechService.synthesizer.continueSpeaking()
        }
    }
    
    @IBAction func playSummaryLessonTwoButton(_ sender: UIButton) {
        speechService.readSummary(lesson: lessons[1])
    }
    
    @IBAction func playSummaryLessonThreeButton(_ sender: UIButton) {
        speechService.readSummary(lesson: lessons[2])
    }
    
    @IBAction func playSummaryLessonFourButton(_ sender: UIButton) {
        speechService.readSummary(lesson: lessons[3])
    }
    
//    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didPause utterance: AVSpeechUtterance) {
//        summaryLessonOne.setImage(UIImage(named: "play-button-inside-a-circle"), for: UIControl.State.normal)
//    }
//
//    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didStart utterance: AVSpeechUtterance) {
//        summaryLessonOne.setImage(UIImage(named: "rounded-pause-button"), for: UIControl.State.normal)
//    }
//
//    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didContinue utterance: AVSpeechUtterance) {
//        summaryLessonOne.setImage(UIImage(named: "rounded-pause-button"), for: UIControl.State.normal)
//    }
//
//    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
//        summaryLessonOne.setImage(UIImage(named: "play-button-inside-a-circle"), for: UIControl.State.normal)
//    }
    
    
    
}
