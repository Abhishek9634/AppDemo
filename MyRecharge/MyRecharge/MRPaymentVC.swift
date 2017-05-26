//
//  MRPaymentVC.swift
//  MyRecharge
//
//  Created by Admin on 27/05/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit
import Stripe

class MRPaymentVC: UIViewController {

    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var emailLabel: UITextField!
    @IBOutlet weak var cardNoLabel: UITextField!
    @IBOutlet weak var expLabel: UITextField!
    @IBOutlet weak var cvvLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func paymentAction(_ sender: Any) {
        makePayMent()
    }
    
    @IBAction func cancel(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func makePayMent() {
        
//        let stpCard = STPCard()
//        stpCard.name = nameLabel.text
//        stpCard.number = cardNoLabel.text
//        stpCard.expMonth = UInt((expLabel.text?.components(separatedBy: "/")[0])!)!
//        stpCard.expYear = UInt((expLabel.text?.components(separatedBy: "/")[1])!)!
//        stpCard.cvc = cvvLabel.text

    }

}
