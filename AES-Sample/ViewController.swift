//
//  ViewController.swift
//  AES-Sample
//
//  Created by K, Santhosh on 23/04/17.
//  Copyright © 2017 K, Santhosh. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var encryptedTextLabel: UILabel!
    @IBOutlet weak var decrytedTextlabel: UILabel!

    
    //MARK :- Action methods
    @IBAction func didTapEncryptButton(_ sender: Any) {
        
        if !textView.text.isEmpty {
            if let utf8Data = textView.text.data(using: .utf8) {
                if let data : Data = Cryptor.sharedInstance().encryptedData(of: utf8Data, withKey: "abc123") {
                    let encryptedStr = data.base64EncodedString(options: .lineLength64Characters)
                    encryptedTextLabel.text = encryptedStr
                }
                
            }
            
        }
    }
    
    @IBAction func didTapDecryptButton(_ sender: Any) {
    
        if let text = encryptedTextLabel.text {
            if let base64Data = Data.init(base64Encoded: text, options: .ignoreUnknownCharacters) {
                if let data = Cryptor.sharedInstance().decryptedData(of: base64Data, withKey: "abc123") {
                    let decryptedStr = String.init(data: data, encoding: .utf8)
                    decrytedTextlabel.text = decryptedStr
                }
            }
        }
    }
    
    @IBAction func didTapClearButton(_ sender: Any) {
        textView.text = nil
        encryptedTextLabel.text = nil
        decrytedTextlabel.text = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

