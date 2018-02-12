//
//  ViewController.swift
//  MVVM Example project
//
//  Created by Stanly Shiyanovskiy on 12.02.18.
//  Copyright © 2018 Stanly Shiyanovskiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets -
    @IBOutlet weak var usersTableView: UITableView!
    @IBOutlet var userViewModel: UserViewModel!
    
    // MARK: - Properties -
    var usersModel = [UsersModel]()
    var activityIndicator:UIActivityIndicatorView = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.startloading()
        usersTableView.delegate = self
        usersTableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        downloadDate()
        
    }
    
    func downloadDate(){
        self.userViewModel.getUsers {
            self.usersModel = Array(self.userViewModel.usersList)
            self.stopLoading()
            self.usersTableView.reloadData()
        }
    }
    
    @IBAction func addMoreUsers(_ sender: UIButton) {
        downloadDate()
    }
    
    func startloading() {
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        UIApplication.shared.beginIgnoringInteractionEvents()
    }
    
    // stop loading
    func stopLoading() {
        self.activityIndicator.stopAnimating()
        UIApplication.shared.endIgnoringInteractionEvents()
    }
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let userCell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as! UserTableViewCell
        userCell.confiqureUserCell(item: self.usersModel[indexPath.row])
        return userCell
    }
}

