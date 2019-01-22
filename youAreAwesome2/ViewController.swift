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
        if messageLabel.text == "You are Awesome!!"{
            messageLabel.text = "You are Great!!"
        }else if messageLabel.text == "You are Great!!"{
            messageLabel.text = "You are Amazing!!"
        }else {
            messageLabel.text = "You are Awesome!!"
        }
    }
    
    
    
}

