//
//  ViewController.swift
//  Postcard
//
//  Created by Sergio Sierra Gomez on 27/09/14.
//  Copyright (c) 2014 Seriy Volk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextFile: UITextField!
    
    @IBOutlet weak var enterMessageTextFile: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextFile.text
        enterMessageTextFile.text = ""
        enterMessageTextFile.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        nameLabel.hidden = false
        nameLabel.text = enterNameTextFile.text
        enterNameTextFile.text = ""
        nameLabel.textColor = UIColor.greenColor()
        
    
    }

}
