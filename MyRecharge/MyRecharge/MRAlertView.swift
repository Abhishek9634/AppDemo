//
//  MRAlertView.swift
//  MyRecharge
//
//  Created by Admin on 27/05/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class MRAlertView: UIView {

    @IBOutlet weak var defultButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    @IBAction func buttonAction(_ sender: Any) {
        self.removeFromSuperview()
    }
}
