//
//  UserTableViewCell.swift
//  MVVM Example project
//
//  Created by Stanly Shiyanovskiy on 12.02.18.
//  Copyright © 2018 Stanly Shiyanovskiy. All rights reserved.
//

import UIKit
import SDWebImage

class UserTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userImage: CircleImage!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func confiqureUserCell(item: UsersModel){
        self.userImage.sd_setImage(with: URL(string: (item.picture?.medium)!))
        self.userName.text = item.name?.getFullName()
        self.userEmail.text = item.email
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
