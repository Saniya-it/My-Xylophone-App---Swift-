//
//  ViewController.swift
//  My Xylophone
//
//  Created by Dauletkhanova Saniya on 29.01.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(a: (sender.titleLabel?.text)!)
        
        //Reduces the sender's (the button that got pressed) opacity to half.
         sender.alpha = 0.5

         //Code should execute after 0.2 second delay.
         DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
             //Bring's sender's opacity back up to fully opaque.
             sender.alpha = 1.0
    }
    }
    func playSound(a: String) {
        let url = Bundle.main.url(forResource: "\(a)", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
