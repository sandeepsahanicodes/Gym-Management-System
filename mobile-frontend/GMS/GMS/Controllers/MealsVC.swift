//
//  MealsVC.swift
//  GMS
//
//  Created by Sandeep Sahani on 31/01/25.
//

import UIKit

struct Meal {
    let type: String
    let description: String
    let macros: String
}

class MealsVC: UIViewController {

    @IBOutlet weak var navigationHeaderView: NavigationHeaderView!
    
    @IBOutlet weak var mealsTableView: UITableView!
    
    let meals: [Meal] = [
        Meal(
            type: "Lunch",
            description: "Greek yogurt parfait:\n1 cup full-fat Greek yogurt\n1/4 cup granola\n1/2 cup mixed berries",
            macros: "protein: 20g\ncarbs: 50g\nfats: 20g\nCalories ~1000kcal"
        ),
        Meal(
            type: "Breakfast",
            description: "Avocado toast:\n2 slices whole-grain bread\n1/2 avocado\n1 poached egg",
            macros: "protein: 15g\ncarbs: 30g\nfats: 25g\nCalories ~400kcal"
        ),
        Meal(
            type: "Dinner",
            description: "Grilled chicken salad:\n1 grilled chicken breast\n2 cups mixed greens\n1/4 cup feta cheese\n1/4 cup olives",
            macros: "protein: 35g\ncarbs: 10g\nfats: 20g\nCalories ~450kcal"
        ),
        Meal(
            type: "Snack",
            description: "Protein shake:\n1 scoop protein powder\n1 cup almond milk\n1 banana",
            macros: "protein: 25g\ncarbs: 30g\nfats: 5g\nCalories ~250kcal"
        ),
        Meal(
            type: "Dinner",
            description: "Salmon with quinoa:\n1 grilled salmon fillet\n1/2 cup cooked quinoa\n1 cup steamed broccoli",
            macros: "protein: 40g\ncarbs: 35g\nfats: 15g\nCalories ~500kcal"
        ),
        Meal(
            type: "Breakfast",
            description: "Oatmeal with fruits:\n1/2 cup rolled oats\n1 cup almond milk\n1/2 cup mixed fruits",
            macros: "protein: 10g\ncarbs: 50g\nfats: 5g\nCalories ~300kcal"
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationHeaderView.configure(heading: "Gaining", avatarImage: nil)
        self.mealsTableView.delegate = self
        self.mealsTableView.dataSource = self
        
        self.mealsTableView.register(UINib(nibName: String(describing: InfoTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: InfoTableViewCell.self))
    }
}

extension MealsVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 105.0
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        let footerView = tableView.dequeueReusableCell(withIdentifier: String(describing: InfoTableViewCell.self)) as! InfoTableViewCell
        footerView.configure(heading: "Total Macros", infoDescription: "protein: 10g\ncarbs: 50g\nfats: 5g\nCalories ~300kcal", infoType: .footerMacroInfo)
        return footerView
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: InfoTableViewCell.self)) as! InfoTableViewCell
        cell.configure(heading: meals[indexPath.row].type, infoDescription: meals[indexPath.row].description, infoType: .dietInfo(macroInfo: meals[indexPath.row].macros))
        return cell
    }
    
    
}
