//
//  HomeScreenViewController.swift
//  projectFenix
//
//  Created by LAUGA Aristide on 02/10/2019.
//  Copyright © 2019 Apprendre. All rights reserved.
//

import UIKit
import AVFoundation

class HomeScreenViewController: UIViewController {
    
    let speechService = SpeechService()
    
    @IBOutlet weak var audioDescriptionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch(sender:)))
            view.addGestureRecognizer(pinch)
        // Do any additional setup after loading the view.
        SpeechService().say("Bienvenue sur l'application Fénix : \n veuillez appuyer sur le coin supérieur droit de votre écran afin d'enclencher l'audiodescription.")

//juxtaposés verticalement.\n Vous avez la possibilité d’appuyer sur chacun de ces boutons pour vous dirigez sur la liste des cours ou Couize. \n Sur les prochaines pages vous aurez un bouton dans le coin supérieur gauche pour retourner à la page d'accueil. \n Vous pouvez également zoomer si nécessaire.
        
    }

@objc func handlePinch(sender: UIPinchGestureRecognizer) {
        guard sender.view != nil else { return }
        
        if sender.state == .began || sender.state == .changed {
            sender.view?.transform = (sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale))!
            sender.scale = 1
    }
    
    if  sender.state == .ended  {
        
        UIView.animate(withDuration: 0.7) {
            sender.view?.transform = CGAffineTransform.identity
        }
    }
    
 }
    
    
    
    @IBAction func audioDescriptionButton(_ sender: UIButton) {
        
        if !speechService.synthesizer.isSpeaking {
            speechService.say("Bienvenue sur l'application Fénix, une application de cours pensée pour les personnes malvoyantes. \n Comme vous le savez,en haut à droite se situe le bouton d'audiodescription \n. \n Dans la partie supérieure de l'écran se trouve le logo et le nom de notre application : Fénix \n. Au milieu de l'écran se trouve les boutons Cours et Couize, juxtaposés verticalement. \n Vous avez la possibilité d’appuyer sur chacun de ces boutons pour vous dirigez sur la liste des cours ou Couize. \n Sur les prochaines pages vous aurez un bouton dans le coin supérieur gauche pour retourner à la page d'accueil. \n Vous pouvez également zoomer si nécessaire.")
        }
        
        else if speechService.synthesizer.isSpeaking && !speechService.synthesizer.isPaused {
            speechService.synthesizer.pauseSpeaking(at: AVSpeechBoundary.immediate)
    
        }
        
        else if speechService.synthesizer.isPaused {
            speechService.synthesizer.continueSpeaking()
        }
    }

    
    
}

