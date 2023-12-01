//
//  UserInfo.swift
//  login
//
//  Created by GSITM on 12/1/23.
//

import Foundation

class UserInfo{
    
    let defaults = UserDefaults.standard
    
    func get(key : String) -> bool {
        return defaults.object(forKey: key) != nil
    }

    func set(data : Any, key: String){
        defaults.set(data, forKey: key)
    }
}
