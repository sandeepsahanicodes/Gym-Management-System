//
//  DietPlanVC.swift
//  GMS
//
//  Created by Sandeep Sahani on 30/01/25.
//

import UIKit

class DietPlanVC: UIViewController {

    @IBOutlet weak var navigationHeaderView: NavigationHeaderView!
    
    @IBOutlet weak var dietCardTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationHeaderView.configure(heading: "Diet Plan", avatarImage: "sandeep")
        
        dietCardTableView.dataSource = self
        dietCardTableView.delegate = self
        self.dietCardTableView.register(UINib(nibName: String(describing: CardTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: CardTableViewCell.self))
        
        self.dietCardTableView.showsVerticalScrollIndicator = false
        self.dietCardTableView.showsHorizontalScrollIndicator = false
    }
}

extension DietPlanVC:
    
    
    UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dietCardCell = tableView.dequeueReusableCell(withIdentifier: String(describing: CardTableViewCell.self)) as! CardTableViewCell
        dietCardCell.configure(cardImage: UIImage(named: "foodImage")! , cardName: "Bulking", cardDescriptioin: "Best non-veg gaining diet", cardEndDescription: nil, cardType: .dietUser(isNonVegetarian: false))
        
        return dietCardCell
    }
}
