//
//  Picture.swift
//  MVVM Example project
//
//  Created by Stanly Shiyanovskiy on 12.02.18.
//  Copyright © 2018 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation
import ObjectMapper

class Picture: Mappable {
    
    var large: String?
    var medium: String?
    var thumbnail: String?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        large <- map["tilargetle"]
        medium <- map["medium"]
        thumbnail <- map["thumbnail"]
    }
}
