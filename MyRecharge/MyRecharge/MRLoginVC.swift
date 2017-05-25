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
import GoogleSignIn
import TwitterKit

class MRLoginVC: UIViewController, GIDSignInUIDelegate {

    @IBOutlet weak var appTitle: UILabel!
    @IBOutlet weak var fbLoginButton: UIButton!
    @IBOutlet weak var googleLoginButton: UIButton!
    
    var loginCompletion: TWTRLogInCompletion?
    
    @IBOutlet weak var googleSigninButton: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        GIDSignIn.sharedInstance().uiDelegate = self
//        addTwitterButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if (FBSDKAccessToken.current() != nil) {
        
            // GETTING TOKEN : LOGIN SUCCESS ONLY
             print("FBSDK TOKEN \(FBSDKAccessToken.current().tokenString)")
        }
    }
    
    //========================================================================================================
    // Actions
    //========================================================================================================
    
    @IBAction func facebookLogin(_ sender: Any) {
        
        self.loginFacbook { (error) in
         
//            let parameters = ["fields": "id, name, first_name, last_name, email, picture.type(large)"]
            
/*             note : large will give Graph URL : https://scontent.xx.fbcdn.net/v/t1.0-1/s200x200/17992267_1888765098038177_2265362260149481132_n.jpg?oh=24a7f819e228205792d31666703c635a&oe=59AF9FFE
            
            */
            
            let parameters = ["fields": "id, name, email, picture.width(100).height(100)"]
            
            let request = FBSDKGraphRequest(graphPath: "me", parameters: parameters)
            
            let _ = request?.start(completionHandler: { (connection, result, error) in
                
                guard (result as? [String: Any]) != nil else { return } //handle the error
                
//                print("USER DETAILS : \(result)")
                
//                let userInfo = result as? [String: Any]
//                let fbID = userInfo?["id"] as! String
//                let fullName = userInfo?["name"] as! String
//                let email = userInfo?["email"] as! String
//                let pictureUrl = ((userInfo?["picture"] as? [String: Any])?["data"] as? [String: Any])?["url"] as! String
              
//                 print("USER DETAILS : \(fbID) \n \(fullName) \n \(email) \n \(pictureUrl)")
            })
        }
    }

    @IBAction func googleLogin(_ sender: Any) {
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let tabBarVC = storyboard.instantiateViewController(withIdentifier: "MRTabBarVC")
        self.present(tabBarVC, animated: true, completion: nil)
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
    
    
    @IBAction func loginWithTwitter(_ sender: Any) {
        
        Twitter.sharedInstance().logIn { session, error in
            if (session != nil) {
                print("Twitter signed in as \(session?.userName)");
            } else {
                print("Twitter error: \(error?.localizedDescription)");
            }
        }
        
    }

    func addTwitterButton() {
    
        loginCompletion = { session, error in
            if (session != nil) {
                print("signed in as \(session?.userName)");
            } else {
                print("error: \(error?.localizedDescription)");
            }
        }
        
        let logInButton = TWTRLogInButton(logInCompletion: loginCompletion!)
        logInButton.center = self.view.center
        self.view.addSubview(logInButton)

    }
    
}
