//
//  MRChooseNetworkVC.swift
//  MyRecharge
//
//  Created by Admin on 12/05/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class MRChooseNetworkVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    @IBOutlet weak var operatorCollectionView: UICollectionView!
    
    var arrayList: [MROperator]? = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        operatorCollectionView.delegate = self
        operatorCollectionView.dataSource = self
        
        let ob1 = MROperator()
        ob1.name = "Airtel"
        ob1.imageUrl = "airtel.jpg"
        
        let ob2 = MROperator()
        ob2.name = "BSNL"
        ob2.imageUrl = "bsnl.png"
        
        let ob3 = MROperator()
        ob3.name = "Jio"
        ob3.imageUrl = "jio.png"
        
        let ob4 = MROperator()
        ob4.name = "Idea"
        ob4.imageUrl = "idea.png"
        
        let ob5 = MROperator()
        ob5.name = "Aircel"
        ob5.imageUrl = "aircel.png"
        
        let ob6 = MROperator()
        ob6.name = "Tata Docomo"
        ob6.imageUrl = "tata_docomo.png"
        
        let ob7 = MROperator()
        ob7.name = "Vodafone"
        ob7.imageUrl = "vodafone.png"
        
        arrayList?.append(ob1)
        arrayList?.append(ob2)
        arrayList?.append(ob3)
        arrayList?.append(ob4)
        arrayList?.append(ob5)
        arrayList?.append(ob6)
        arrayList?.append(ob7)
        
        operatorCollectionView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (arrayList?.count)!
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MRNetworkCVCell", for: indexPath) as! MRNetworkCVCell
        
        let obj = (arrayList?[indexPath.row])! as MROperator
        
        cell.nameLabel.text = obj.name! as String
        cell.imgView.image = UIImage(named: obj.imageUrl!)
        
        return cell
        
    }
    
}
