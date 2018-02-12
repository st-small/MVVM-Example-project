//
//  Location.swift
//  MVVM Example project
//
//  Created by Stanly Shiyanovskiy on 12.02.18.
//  Copyright © 2018 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation
import ObjectMapper

class Location: Mappable {
    
    var street: String?
    var city: String?
    var state: String?
    var postcode: String?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        street <- map["street"]
        city <- map["city"]
        state <- map["state"]
        postcode <- map["postcode"]
    }
}
