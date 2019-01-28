//
//  ViewController.swift
//  youAreAwesome2
//
//  Created by John Connolly on 1/21/19.
//  Copyright © 2019 John Connolly. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    
    var index = -1
    var imageIndex = -1
    let numberOfImages = 12
    let numberOfSounds = 6
    var soundIndex = -1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let messages = ["You are Awesome!",
                        "You are Great!",
                        "You are Fantastic!",
                        "When the Genius Bar needs help, they call you",
                        "You brighten my day!",
                        "You are da bomb!",
                        "Hey, fabulous!",
                        "You are tremendous!",
                        "You've got the design skills of Jony Ive!",
                        "I can't wait to download your app!"]
//        var newIndex = -1
        var newIndex: Int
        
        //show a message
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        }while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        //show an image
        repeat{
            newIndex = Int.random(in: 0..<numberOfImages)
        }while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        //get a random number to use in soundName file
        
        repeat{
            newIndex = Int.random(in: 0..<numberOfSounds)
        }while soundIndex == newIndex
        
        soundIndex = newIndex
        
        //play a sound
        var soundName = "sound\(soundIndex)"
        
        // can we load in file soundname
        if let sound = NSDataAsset(name: soundName){
            //check if sound.data is a sound file
            
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            }catch{
                print("ERROR: data in \(soundName) couldnt be played as a sound")
                
            }
        }else{
            // if reading the NSDataAsset didnt work,
            //tell the developer and report the error
            print("ERROR: file \(soundName) didnt load")
        }
        
        
        
        
        
        
        
//        messageLabel.text = messages.randomElement()!
        
        
        
        
//        messageLabel.text = messages[index]
//        if index == messages.count - 1{
//            index = 0
//        }else{
//            index += 1
//        }
        
//        let message1 = "You are Awesome!!"
//        let message2 = "You are Great!!"
//        let message3 = "You are Amazing!!"
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        }else if messageLabel.text == message2{
//            messageLabel.text = message3
//        }else {
//            messageLabel.text = message1
//
//        }
        
    }
    
    
    
}

