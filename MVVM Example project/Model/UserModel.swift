//
//  UserModel.swift
//  MVVM Example project
//
//  Created by Stanly Shiyanovskiy on 12.02.18.
//  Copyright © 2018 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation
import ObjectMapper

class UsersModel: Mappable{
    
    var gender: String?
    var email: String?
    var phone: String?
    var cell: String?
    var name: Name?
    var location: Location?
    var login: Login?
    var picture: Picture?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        
        gender <- map["gender"]
        email <- map["email"]
        phone <- map["phone"]
        cell <- map["cell"]
        name <- map["name"]
        location <- map["location"]
        login <- map["login"]
        picture <- map["picture"]
        
    }
}
