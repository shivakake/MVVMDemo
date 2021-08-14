//
//  UserViewModel.swift
//  MVVMDemo
//
//  Created by PGK Shiva Kumar on 13/08/21.
//

import Foundation
class UserViewModel{
    var userModel : UserModel = UserModel()
    var userList : [UserStructure] = []
    func getData(){
        userModel.getData()
        let data = userModel.users
        userList = data
    }

}
