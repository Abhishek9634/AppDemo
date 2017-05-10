//
//  MRLoginVC.swift
//  MyRecharge
//
//  Created by Admin on 10/05/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit

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

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if (FBSDKAccessToken.current() != nil) {
        
            // GETTING TOKEN : LOGIN SUCCESS ONLY
        }
    }
    
    //========================================================================================================
    // Actions
    //========================================================================================================
    
    @IBAction func facebookLogin(_ sender: Any) {
        self.loginFacbook { (error) in
            
        }
    }

    @IBAction func googleLogin(_ sender: Any) {
        
        
    }
    
    func loginFacbook(completion : @escaping (_ error: NSError?) -> Void) {
    
        let loginManager = FBSDKLoginManager()
        loginManager.logIn(withReadPermissions: ["public_profile", "email", "user_friends"], from: self) { (loginResult, error) in
            
            if ((loginResult?.isCancelled)! || loginResult?.token == nil) {
            
            } else {
            
                print("FBSDK TOKEN \(loginResult?.token.tokenString)")
            }
            completion(error as NSError?)
        }
        
    }

}
