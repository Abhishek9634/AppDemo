//
//  MRPreferences.swift
//  MyRecharge
//
//  Created by Admin on 11/05/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class MRPreferences: NSObject {

    class func setUserName(name: String) {
        UserDefaults.standard.set(name, forKey: "Name")
        UserDefaults.standard.synchronize()
    }
    
    class func getUserName() -> String {
        return UserDefaults.standard.object(forKey: "Name") as! String
    }
    
    class func setFBID(id: String) {
        UserDefaults.standard.set(id, forKey: "FBID")
        UserDefaults.standard.synchronize()
    }
    
    class func getFBID() -> String {
        return UserDefaults.standard.object(forKey: "FBID") as! String
    }
    
    class func setUserEmail(email: String) {
        UserDefaults.standard.set(email, forKey: "Email")
        UserDefaults.standard.synchronize()
    }
    
    class func getUserEmail() -> String {
        return UserDefaults.standard.object(forKey: "Email") as! String
    }
    
    class func setUserImage(imageUrl: String) {
        UserDefaults.standard.set(imageUrl, forKey: "Image")
        UserDefaults.standard.synchronize()
    }
    
    class func getUserImage() -> String {
        return UserDefaults.standard.object(forKey: "Image") as! String
    }
}
