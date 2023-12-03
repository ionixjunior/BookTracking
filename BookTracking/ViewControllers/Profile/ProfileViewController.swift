//
//  ProfileViewController.swift
//  BookTracking
//
//  Created by Ione Souza Junior on 03/12/23.
//

import UIKit

class ProfileViewController: UIViewController {

    var profileScreen: ProfileScreen?
    
    override func loadView() {
        profileScreen = ProfileScreen()
        view = profileScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
