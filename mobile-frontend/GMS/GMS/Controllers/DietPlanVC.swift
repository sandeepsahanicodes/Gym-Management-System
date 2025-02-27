//
//  DietPlanVC.swift
//  GMS
//
//  Created by Sandeep Sahani on 30/01/25.
//

import UIKit

class DietPlanVC: UIViewController, ProfileAvatarButtonDelegate {
    
    @IBOutlet weak var navigationHeaderView: NavigationHeaderView!
    @IBOutlet weak var dietCardTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationHeaderView.configure(heading: "Diet Plan", avatarImage: "sandeep")
        navigationHeaderView.delegate = self
        
        dietCardTableView.dataSource = self
        dietCardTableView.delegate = self
        self.dietCardTableView.register(UINib(nibName: String(describing: CardTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: CardTableViewCell.self))
        
        self.dietCardTableView.showsVerticalScrollIndicator = false
        self.dietCardTableView.showsHorizontalScrollIndicator = false
    }
    
    func didProfileAvatarTapped() {
        NavigationManager.push(ofType: ProfileVC.self, fromStoryboard: "Main", using: self.navigationController)
    }
}

extension DietPlanVC: UITableViewDelegate,UITableViewDataSource,CardTableViewCellDelegate {
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dietCardCell = tableView.dequeueReusableCell(withIdentifier: String(describing: CardTableViewCell.self)) as! CardTableViewCell
        dietCardCell.configure(cardImage: UIImage(named: "foodImage")! , cardName: "Bulking", cardDescriptioin: "Best non-veg gaining diet", cardEndDescription: nil, cardType: .dietTrainer(isNonVegetarian: false), delegate: self)
        return dietCardCell
    }
    
    func didTapDeleteButton(cell: CardTableViewCell, didTap button: UIButton) {
        guard let indexPath = dietCardTableView.indexPath(for: cell) else { return }
        
        print("Current row number is \(indexPath.row)")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NavigationManager.push(ofType: MealsVC.self, fromStoryboard: "Main", using: self.navigationController)
    }
}
