//
//  ViewController.swift
//  youAreAwesome2
//
//  Created by John Connolly on 1/21/19.
//  Copyright © 2019 John Connolly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    var index = 0
    
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
        
        messageLabel.text = messages.randomElement()!
        
        
        
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

