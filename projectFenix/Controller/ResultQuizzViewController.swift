//
//  ResultQuizzViewController.swift
//  projectFenix
//
//  Created by LAUGA Aristide on 02/10/2019.
//  Copyright © 2019 Apprendre. All rights reserved.
//

import UIKit

class ResultQuizzViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch(sender:)))
        view.addGestureRecognizer(pinch)
        
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    }
}
