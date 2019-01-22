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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let message1 = "You are Awesome!!"
        let message2 = "You are Great!!"
        let message3 = "You are Amazing!!"
        if messageLabel.text == message1 {
            messageLabel.text = message2
        }else if messageLabel.text == message2{
            messageLabel.text = message3
        }else {
            messageLabel.text = message1
        
        }
    }
    
    
    
}

