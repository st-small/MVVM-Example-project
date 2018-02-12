//
//  Name.swift
//  MVVM Example project
//
//  Created by Stanly Shiyanovskiy on 12.02.18.
//  Copyright © 2018 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation
import ObjectMapper

class Name: Mappable {
    
    var title: String?
    var first: String?
    var last: String?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        title <- map["title"]
        first <- map["first"]
        last <- map["last"]
    }
    
    func getFullName()-> String {
        return title! + ": " + first! + " " + last!
    }
}
