//
//  MRProfileVC.swift
//  MyRecharge
//
//  Created by Admin on 28/05/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ProfileTableCell: UITableViewCell {
 
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var txtLabel: UILabel!
    
    func configure(model: CellModel) {
        imgView.image = UIImage(named: model.image)
        txtLabel.text = model.name
    }
}

enum TableSelection: Int {

    case Orders = 1
    case Settings = 2
    
    func targetAction () {
        // TODO
    }
}

struct CellModel {
    var name: String
    var image: String
}

class MRProfileVC: UIViewController {

    @IBOutlet weak var userImgView: UIImageView!
    @IBOutlet weak var editProfileButton: UIButton!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userBalanceLabel: UILabel!
    @IBOutlet weak var ptableView: UITableView!
    
    var profileList: [CellModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTable()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func editProfileAction(_ sender: Any) {
        
    }
    
}

extension MRProfileVC: UITableViewDelegate, UITableViewDataSource {
    
    func setupTable() {
        self.ptableView.delegate = self
        self.ptableView.dataSource = self
        
        profileList = [CellModel(name: "My Orders", image: ""),
                       CellModel(name: "Settings", image: ""),
                       CellModel(name: "Help & FeedBack", image: ""),
                       CellModel(name: "About Us", image: "")]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.profileList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileTableCell") as! ProfileTableCell
        cell.configure(model: profileList[indexPath.row])
        return cell
    }
    
}
