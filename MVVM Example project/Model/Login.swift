//
//  Login.swift
//  MVVM Example project
//
//  Created by Stanly Shiyanovskiy on 12.02.18.
//  Copyright © 2018 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation
import ObjectMapper

class Login: Mappable {
    
    var userName: String?
    var password: String?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        userName <- map["username"]
        password <- map["password"]
    }
}
