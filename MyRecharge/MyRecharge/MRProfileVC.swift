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

enum TableSelection: String {

    case Orders
    case Settings
    case Help
    case About
    
    var storyBoardId: String {
        
        switch (self) {
        case .Orders:
            return "MROrdersVC"
        case .Settings:
            return "MRAboutUsVC"
        case .Help:
            return "MRAboutUsVC"
        case .About:
            return "MRAboutUsVC"
        }
    }
}

struct CellModel {
    var name: String
    var image: String
    var selection: TableSelection
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
        
        profileList = [CellModel(name: "My Orders", image: "", selection: .Orders),
                       CellModel(name: "Settings", image: "", selection: .Settings),
                       CellModel(name: "Help & FeedBack", image: "", selection: .Help),
                       CellModel(name: "About Us", image: "", selection: .About)]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let model = profileList[indexPath.row]
        let vc = UIStoryboard.getVC(ID: model.selection.storyBoardId)
        self.navigationController?.pushViewController(vc, animated: true)
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
