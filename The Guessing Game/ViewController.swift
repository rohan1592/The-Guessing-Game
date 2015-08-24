//
//  ViewController.swift
//  The Guessing Game
//
//  Created by Rohan Sachdev on 8/18/15.
//  Copyright © 2015 TheRohanSachdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InputTextField: UITextField!
    
    @IBAction func SubmitButton(sender: AnyObject) {
        
        let random = String(arc4random_uniform(7));
        print(random)
        if(InputTextField.text == random)
        {
            OutputLabel.text = "You are correct!!"
        }
        else
        {
            OutputLabel.text = "You are wrong!!"
        }
    }
    
    @IBOutlet weak var OutputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

