//
//  MRTariffPlansVC.swift
//  MyRecharge
//
//  Created by Admin on 26/05/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class MRTariffPlansVC: UIViewController {

    @IBOutlet weak var plansCollectionView: UICollectionView!
    
    static let cellId: String = "planCellId"
    var plansArray: [MRPlans]? = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

extension MRTariffPlansVC: UICollectionViewDataSource, UICollectionViewDelegate {

    func setupUI() {
        
        plansCollectionView.delegate = self
        plansCollectionView.dataSource = self
        
        let ob1 = MRPlans()
        ob1.name = "Full TalkTime"
        ob1.price = "Rs 444"
        ob1.validity = "28 Days"
        ob1.talkTime = "Rs 444"
        
        let ob2 = MRPlans()
        ob2.name = "3G"
        ob2.price = "Rs 256"
        ob2.validity = "28 Days"
        ob2.talkTime = "Rs 0/ 2GB"
        
        let ob3 = MRPlans()
        ob3.name = "4G"
        ob3.price = "Rs 499"
        ob3.validity = "28 Days"
        ob3.talkTime = "Rs 0/ 2GB"
        
        let ob4 = MRPlans()
        ob4.name = "3G/4G"
        ob4.price = "Rs 199"
        ob4.validity = "28 Days"
        ob4.talkTime = "Rs 0/ 500MB"
        
        let ob5 = MRPlans()
        ob5.name = "Rate Cutter"
        ob5.price = "Rs 110"
        ob5.validity = "28 Days"
        ob5.talkTime = "1p/min Local + STD"
        
        plansArray?.append(ob1)
        plansArray?.append(ob2)
        plansArray?.append(ob3)
        plansArray?.append(ob4)
        plansArray?.append(ob5)

    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let viewController = UIStoryboard.getVC(ID: "MRPaymentVC")
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (plansArray?.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MRTariffPlansVC.cellId,
                                                      for: indexPath) as! MRPlansCVCell
        
        let plan = (plansArray?[indexPath.row])! as MRPlans
        cell.nameLabel.text = plan.name
        cell.price.text = plan.price
        cell.validity.text = plan.price
        cell.talkTime.text = plan.talkTime
        
        return cell
    }
}
