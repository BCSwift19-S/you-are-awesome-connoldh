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
        messageLabel.text = "You are Awesome!!"
        messageLabel.textColor = UIColor.cyan
        
    }
    
    @IBAction func showAnotherMessagePressed(_ sender: UIButton) {
        messageLabel.text = "You are Great!!!"
        messageLabel.textColor = UIColor.red
    }
    
}

