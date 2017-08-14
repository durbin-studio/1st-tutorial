//
//  ViewController.swift
//  Basic Storyboard Tutorial
//
//  Created by Waheduzzaman on Aug/14/17.
//  Copyright © 2017 Waheduzzaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //outlet is actually the reference for the view that we can access and modify
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    
    @IBAction func onTFClicked(_ sender: UITextField) {
        outputLabel.text = "Please enter your name above";
    }
    
    var textVal: String = "";
    
    //action is the function which is invoked on a uiComponent as defined
    @IBAction func okClicked(_ sender: UIButton) {
        textVal = textField.text!;
        outputLabel.text = textVal;
        textField.text = "";
        self.view.endEditing(true);
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // do some network call 
        // do some small checks
        outputLabel.text = "Please enter your name above";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

