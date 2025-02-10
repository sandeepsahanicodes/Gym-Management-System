//
//  AddDietVC.swift
//  GMS
//
//  Created by Sandeep Sahani on 08/02/25.
//

import UIKit

class UploadDietVC: UIViewController {

    @IBOutlet weak var navigationHeaderView: NavigationHeaderView!
    @IBOutlet weak var dietTypeDropDown: DropDownInputField!
    @IBOutlet weak var foodCategoryDropDown: DropDownInputField!
    @IBOutlet weak var mealTypeDropDown: DropDownInputField!
    @IBOutlet weak var addFoodInputField: InputField!
    @IBOutlet weak var proteinInputField: InputField!
    @IBOutlet weak var carbsInputField: InputField!
    @IBOutlet weak var fatsInputField: InputField!
    @IBOutlet weak var caloriesInputField: InputField!
    
    @IBOutlet weak var foodsPreviewTextView: UITextView!
    
    @IBOutlet weak var dietBackgroundimage: UIImageView!
    
    private let photoPickerHelper = PhotoPickerHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationHeaderView.configure(heading: "Upload Diet",avatarImage: "sandeep")
        dietTypeDropDown.configure(heading: "Diet Type", placeholder: "Add diet type", dropDownElements: ["Gaining","Cutting","Muscle Building"])
        foodCategoryDropDown.configure(heading: "Food Category", placeholder: "Add food category", dropDownElements: ["Veg","Non-veg","Vegan"])
        mealTypeDropDown.configure(heading: "Meal Type", placeholder: "Add meal type", dropDownElements: ["Breakfast","Lunch","Dinner","Evening Snack","Late Night Snack"])
        
        addFoodInputField.configure(heading: "Add Food", placeholder: "Add food item", contentType: .name)
        proteinInputField.configure(heading: "Protein", placeholder: "100g", contentType: .name)
        carbsInputField.configure(heading: "Carbs", placeholder: "300g", contentType: .name)
        fatsInputField.configure(heading: "Fats", placeholder: "50g", contentType: .name)
        caloriesInputField.configure(heading: "Calories", placeholder: "120kcal", contentType: .name)
        
        photoPickerHelper.delegate = self
        foodsPreviewTextView.styleBorder()
    }
    
    @IBAction func addFoodBtnTapped(_ sender: Any) {
    }
    
    @IBAction func addFoodImageBtnTapped(_ sender: Any) {
        photoPickerHelper.presentPhotoPicker(from: self)
    }
    
    @IBAction func addMealBtnTapped(_ sender: Any) {
    }
}

extension UploadDietVC: PhotoPickerDelegate {
    func didSelectImage(_ image: UIImage) {
        DispatchQueue.main.async {
            self.dietBackgroundimage.image = image
        }
    }
}
