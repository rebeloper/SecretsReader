//
//  ViewController.swift
//  SecretsReader
//
//  Created by Alex Nagy on 16/09/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import UIKit
import Secrets

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let manager = SecretsManager(key: "12345")
        if let secret = manager.readSecret() {
            print("The secret is: \(secret)")
        } else {
            print("Failed to read secret")
        }
    }


}

