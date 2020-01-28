//
//  VoiceSynthesizerUIViewController.swift
//  projectFenix
//
//  Created by LAUGA Aristide on 01/10/2019.
//  Copyright © 2019 Apprendre. All rights reserved.
//

import AVFoundation
import UIKit

class SpeechService {
    
    let synthesizer = AVSpeechSynthesizer()
    
    func say(_ phrase: String, language: String = "fr-FR") {
        
        let utterance = AVSpeechUtterance(string: phrase)
        utterance.voice = AVSpeechSynthesisVoice(language: language)
        
        synthesizer.speak(utterance)
    }
    
    func readSummary(lesson: Lesson) {
        self.say(lesson.lessonSummary)
    }
    
    func readContent(content: Lesson) {
        self.say(content.lessonContent)
    }
    
    func readTitle(title: Lesson) {
        self.say(title.lessonContent)
    }
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didStart utterance: AVSpeechUtterance) {
    }
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didContinue utterance: AVSpeechUtterance) {
    }
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
    }
    
    func speakOrPause() {
        
        if synthesizer.isSpeaking {
            
            self.say(Lesson.allLessons[0].lessonContent)
            
        } else if synthesizer.isSpeaking && synthesizer.isPaused {
            
            synthesizer.pauseSpeaking(at: AVSpeechBoundary.immediate)
            
        } else if synthesizer.isPaused {
            synthesizer.continueSpeaking()
        }
    }
}
