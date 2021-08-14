//
//  UserModel.swift
//  MVVMDemo
//
//  Created by PGK Shiva Kumar on 13/08/21.
//

import Foundation
class UserModel{
    var users : [UserStructure] = []
    func getData(){
        users = [UserStructure(name: "Shiva Kumar", email: "shiva.kake@gmail.com", mobile: "9052998993"),
                 UserStructure(name: "Sai Kiran", email: "saikiran@gmail.com", mobile: "8885869630"),
                 UserStructure(name: "Ajay", email: "ajay@gmail.com", mobile: "7569086936"),
                 UserStructure(name: "Prashanth", email: "prashanth@gmail.com", mobile: "7013529782"),
                 UserStructure(name: "Bhanu Prakash", email: "bhanuPrakash@gmail.com", mobile: "8985801925"),
                 UserStructure(name: "Satish", email: "satish@gmail.com", mobile: "9988776655"),
                 UserStructure(name: "Rahul", email: "rahul@gmail.com", mobile: "9985099850")]
    }
}
struct UserStructure {
    var name : String
    var email : String
    var mobile : String
    var isTapped : Bool = false
}
