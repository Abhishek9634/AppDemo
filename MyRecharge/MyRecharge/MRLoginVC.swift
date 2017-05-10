//
//  MRLoginVC.swift
//  MyRecharge
//
//  Created by Admin on 10/05/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class MRLoginVC: UIViewController {

    
    @IBOutlet weak var appTitle: UILabel!
    
    @IBOutlet weak var fbLoginButton: UIButton!
    
    @IBOutlet weak var googleLoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func facebookLogin(_ sender: Any) {
    }

    @IBAction func googleLogin(_ sender: Any) {
    }
}

