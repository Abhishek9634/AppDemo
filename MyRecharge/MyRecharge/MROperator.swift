//
//  MROperator.swift
//  MyRecharge
//
//  Created by Admin on 12/05/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class MROperator: NSObject {
    
    var name: String?
    var imageUrl: String?
    
    override init() {
        super.init()
    }
    
    init (dictionary: [String: Any]) {
        super.init()
        name = dictionary["name"] as? String
        imageUrl = dictionary["imageUrl"] as? String
    }
    
}
