//
//  User.swift
//  login
//
//  Created by GSITM on 12/1/23.
//

import Foundation


class UserData : Codable{
    var userID : String
    var password : String
    var userName : String
    var date : Date
    
    init(userID: String, password: String, userName: String, date: Date){
        self.userID = userID
        self.password = password
        self.userName = userName
        self.date = date
    }
}
