//
//  ExploreProfileVC.swift
//  GMS
//
//  Created by Sandeep Sahani on 01/02/25.
//

import UIKit

class ExploreProfileVC: UIViewController {

    @IBOutlet weak var navigationHeaderView: NavigationHeaderView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationHeaderView.configure(heading: "Explore Members",avatarImage: "sandeep")
    }
}
