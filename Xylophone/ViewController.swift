//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //Add a player instance for each key
    var playerC: AVAudioPlayer!
    var playerD: AVAudioPlayer!
    var playerE: AVAudioPlayer!
    var playerF: AVAudioPlayer!
    var playerG: AVAudioPlayer!
    var playerA: AVAudioPlayer!
    var playerH: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Block of IBActions
    @IBAction func C_keyPressed(_ sender: UIButton) {
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        playerC = try! AVAudioPlayer(contentsOf: url!)
        playerC.play()

        alphaChanging(sender: sender)
    }
    
    @IBAction func D_keyPressed(_ sender: UIButton) {
        let url = Bundle.main.url(forResource: "D", withExtension: "wav")
        playerD = try! AVAudioPlayer(contentsOf: url!)
        playerD.play()

        alphaChanging(sender: sender)
        
    }
    
    @IBAction func E_keyPressed(_ sender: UIButton) {
        let url = Bundle.main.url(forResource: "E", withExtension: "wav")
        playerE = try! AVAudioPlayer(contentsOf: url!)
        playerE.play()

        alphaChanging(sender: sender)
    }
    
    @IBAction func F_keyPressed(_ sender: UIButton) {
        let url = Bundle.main.url(forResource: "F", withExtension: "wav")
        playerF = try! AVAudioPlayer(contentsOf: url!)
        playerF.play()

        alphaChanging(sender: sender)
    }
    
    @IBAction func G_keyPressed(_ sender: UIButton) {
        let url = Bundle.main.url(forResource: "G", withExtension: "wav")
        playerG = try! AVAudioPlayer(contentsOf: url!)
        playerG.play()

        alphaChanging(sender: sender)
    }
    
    @IBAction func A_keyPressed(_ sender: UIButton) {
        let url = Bundle.main.url(forResource: "A", withExtension: "wav")
        playerA = try! AVAudioPlayer(contentsOf: url!)
        playerA.play()

        alphaChanging(sender: sender)
    }
    
    @IBAction func H_keyPressed(_ sender: UIButton) {
        let url = Bundle.main.url(forResource: "H", withExtension: "wav")
        playerH = try! AVAudioPlayer(contentsOf: url!)
        playerH.play()

        alphaChanging(sender: sender)
    }
    
    //Block of functions
//    func keyPressed(sound: String, sender: UIButton) {
    
//        func playSound(sound: String) {
//            let url = Bundle.main.url(forResource: sound, withExtension: "wav")
//            player = try! AVAudioPlayer(contentsOf: url!)
//            player.play()
//        }
    
    //Method for changing opacity when pressing the key
        func alphaChanging(sender: UIButton) {
            sender.alpha = 1
            if sender.isSelected {
                sender.alpha = 0.5
            }
        }
}
