//
//  UserView.swift
//  MVVMDemo
//
//  Created by PGK Shiva Kumar on 13/08/21.
//

import UIKit
class UserView: UIView {
    @IBOutlet weak var userTVOutlet : UITableView!
    var userListArray : [UserStructure] = []
    func setupUI(){
        userTVOutlet.dataSource = self
        userTVOutlet.delegate = self
        userTVOutlet.register(UINib(nibName: "UserTableViewCell", bundle: nil), forCellReuseIdentifier: "UserTableViewCell")
    }
    func updateUI(){
        userTVOutlet.reloadData()
    }
}
extension UserView : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userListArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = userTVOutlet.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as? UserTableViewCell{
            cell.configureUI(name: userListArray[indexPath.row].name, email: userListArray[indexPath.row].email, mobile: Int(userListArray[indexPath.row].mobile) ?? 0, isTapped: userListArray[indexPath.row].isTapped)
            return cell
        }
        return UITableViewCell()
    }
}
extension UserView : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if userListArray[indexPath.row].isTapped {
            return 140
        }else{
            return 40
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        for index in 0..<userListArray.count{
            if index == indexPath.row {
                userListArray[index].isTapped.toggle()
            }else{
                userListArray[index].isTapped = false
            }
        }
        updateUI()
    }
}

