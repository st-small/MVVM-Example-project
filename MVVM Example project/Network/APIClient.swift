//
//  APIClient.swift
//  MVVM Example project
//
//  Created by Stanly Shiyanovskiy on 12.02.18.
//  Copyright © 2018 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper


// this API Clicent will be called by the viewModel to get our top 10 users from API.
class APIClient: NSObject {
    
    private var privateUsersList = [UsersModel] ()
    
    var usersList: [UsersModel] {
        return privateUsersList
    }
    
    // to download users data Json from the API
    func downloadUser(complete: @escaping DownloadComplete) {
        
        Alamofire.request(RANDOM_USER_URL).responseObject{ (response: DataResponse<UserResponse>) in
            
            let list = response.result.value
            
            if let usersModel = list?.userModelList {
                
                for(_ , user) in usersModel.enumerated() {
                    
                    self.privateUsersList.append(user)
                }
            }
            complete()
        }
    }
    
}

