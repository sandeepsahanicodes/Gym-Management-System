//
//  DashboardVC.swift
//  GMS
//
//  Created by Sandeep Sahani on 29/01/25.
//

import UIKit

class DashboardVC: UIViewController {


    @IBOutlet weak var navigationHeader: NavigationHeaderView!
    @IBOutlet weak var peoplesCard: DashboardCard!
    @IBOutlet weak var membershipCard: DashboardCard!
    @IBOutlet weak var dueCard: DashboardCard!
    @IBOutlet weak var feePaidCard: DashboardCard!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationHeader.configure(heading: "Dashboard", avatarImage: "av2.jpeg")
        
        peoplesCard.configure(icon: "person.3.fill", iconBgColor: .peoplesBlue, value: "50", cardDescription: "Peoples")
        
        membershipCard.configure(icon: "cart.fill", iconBgColor: .cartRed, value: "Silver", cardDescription: "Membership")
        
        dueCard.configure(icon: "calendar.badge.clock", iconBgColor: .black, value: "90 days left", cardDescription: "Due")
        
        feePaidCard.configure(icon: "indianrupeesign", iconBgColor: .rupeeGray, value: "10 Dec '25", cardDescription: "Fee Paid")
        
        self.tabBarController?.tabBar.tintColor = .black
        self.tabBarController?.tabBar.unselectedItemTintColor = .black
    }
    
}
