//
//  UserResponse.swift
//  MVVM Example project
//
//  Created by Stanly Shiyanovskiy on 12.02.18.
//  Copyright © 2018 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation
import ObjectMapper

class UserResponse: Mappable {
    
    var userModelList : [UsersModel]?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        userModelList <- map ["results"]
    }
}
