//
//  ViewController.swift
//  Xylophone
//
//  Created by MD Abir Hossain on 15/6/22.
//  Copyright © 2022 Md Abir Hossain. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func cButtonPressed(_ sender: UIButton) {
        playSound()
    }
    
    @IBAction func dButtonPressed(_ sender: UIButton) {
        playSound()
    }
    
    @IBAction func eButtonPressed(_ sender: UIButton) {
        playSound()
    }
    
    @IBAction func fButtonPressed(_ sender: UIButton) {
        playSound()
    }
    
    @IBAction func gButtonPressed(_ sender: UIButton) {
        playSound()
    }
    
    @IBAction func aButtonPressed(_ sender: UIButton) {
        playSound()
    }
    
    @IBAction func bButtonPressed(_ sender: UIButton) {
    playSound()
    }
    
    func playSound() {
        guard let path = Bundle.main.path(forResource: "C", ofType:"wav") else {
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    
}

