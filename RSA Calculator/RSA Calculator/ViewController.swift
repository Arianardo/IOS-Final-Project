//
//  ViewController.swift
//  RSA Calculator
//
//  Created by Ryan Stephens on 5/6/19.
//  Copyright © 2019 Ryan Stephens. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var e = 3
    var N = 319
    var d = 187
    var M = 0
    var C = 0
    var Mstring = ""
    var Cstring = ""
    
    @IBOutlet weak var encSubmit: UIButton!
    @IBOutlet weak var decCipherBox: UITextField!
    @IBOutlet weak var cipherBox: UITextField!
    @IBOutlet weak var encMessageBox: UITextField!
    @IBOutlet weak var messageBox: UITextField!
    
    
    @IBAction func DecSubmit(_ sender: UIButton) {
        Cstring = cipherBox.text!
        C = Int(Cstring)!
        
        var temp = C
        for _ in 1...d {
        C = (C * temp)%N
        }
        M = C
        Mstring = String(M)
        decCipherBox.text = Mstring
    }
    @IBAction func displayEncMessage(_ sender: UIButton) {
        //encMessageBox.text = messageBox.text
        Mstring = messageBox.text!
        M = Int(Mstring)!//M is now the number the user entered
        
        var temp = M
        for _ in 1...e {
        M = (M * temp)%N//C is now the encrypted number
        }
        C = M
        Cstring = String(C)//Cstring is now the string of C
        encMessageBox.text = Cstring
    }
    
    @IBAction func displayDecCipher(_ sender: UIButton) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

