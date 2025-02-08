//
//  AddDietVC.swift
//  GMS
//
//  Created by Sandeep Sahani on 08/02/25.
//

import UIKit

class AddDietVC: UIViewController {

    @IBOutlet weak var dietTypeDropDown: DropDownInputField!
    
    @IBOutlet weak var foodCategoryDropDown: DropDownInputField!
    
    @IBOutlet weak var mealTypeDropDown: DropDownInputField!
    
    @IBOutlet weak var addFoodInputField: InputField!
    
    @IBOutlet weak var proteinInputField: InputField!
    @IBOutlet weak var carbsInputField: InputField!
    @IBOutlet weak var fatsInputField: InputField!
    @IBOutlet weak var caloriesInputField: InputField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dietTypeDropDown.configure(heading: "Diet Type", placeholder: "", dropDownElements: ["Gaining","Cutting","Muscle Building"])
        foodCategoryDropDown.configure(heading: "Food Category", placeholder: "", dropDownElements: ["Veg","Non-veg","Vegan"])
        mealTypeDropDown.configure(heading: "Meal Type", placeholder: "", dropDownElements: ["Breakfast","Lunch","Dinner","Evening Snack","Late Night Snack"])
        
    }
    
    
    @IBAction func addFoodBtnTapped(_ sender: Any) {
    }
    
    @IBAction func addFoodImageBtnTapped(_ sender: Any) {
    }
    
    @IBAction func addMealBtnTapped(_ sender: Any) {
    }
}
