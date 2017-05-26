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
    var plansArray: [String]? = []
    
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
        
        plansArray = ["11","11","11","11","11","11","11","11",]
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let viewController = UIStoryboard.getVC(ID: "")
        self.present(viewController, animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (plansArray?.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MRTariffPlansVC.cellId, for: indexPath)
        
        return cell
    }
}
