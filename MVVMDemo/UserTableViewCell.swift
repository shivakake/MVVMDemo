//
//  UserTableViewCell.swift
//  MVVMDemo
//
//  Created by PGK Shiva Kumar on 13/08/21.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var userName : UILabel!
    @IBOutlet weak var userEmail : UILabel!
    @IBOutlet weak var userMobileNumber : UILabel!
    @IBOutlet weak var cellBGViewOutlet : UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    func setupUI(){
        userEmail.isHidden = true
        userMobileNumber.isHidden = true
        cellBGViewOutlet.layer.cornerRadius = 5
    }
    func configureUI(name : String , email : String , mobile : Int , isTapped : Bool){
        userName.text = name
        userEmail.text = email
        userMobileNumber.text = String(mobile)
        
        if isTapped {
            userEmail.isHidden = false
            userMobileNumber.isHidden = false
        }else{
            userEmail.isHidden = true
            userMobileNumber.isHidden = true
        }
    }
}
