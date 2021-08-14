//
//  UserViewController.swift
//  MVVMDemo
//
//  Created by PGK Shiva Kumar on 13/08/21.
//

import UIKit
class UserViewController: UIViewController {
    @IBOutlet weak var userViewOutlet : UserView!
    var userModel : UserViewModel  = UserViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        userViewOutlet.setupUI()
        userModel.getData()
        userViewOutlet.userListArray = userModel.userList
        userViewOutlet.updateUI()
    }
}
