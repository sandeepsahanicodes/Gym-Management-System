//
//  UploadWorkout.swift
//  GMS
//
//  Created by Sandeep Sahani on 10/02/25.
//

import UIKit

class UploadWorkoutVC: UIViewController {

    @IBOutlet weak var navigationHeaderView: NavigationHeaderView!
    @IBOutlet weak var workoutInputField: InputField!
    @IBOutlet weak var addExerciseInputField: InputField!
    @IBOutlet weak var setsInputField: InputField!
    @IBOutlet weak var repRangeInputField: InputField!
    @IBOutlet weak var noteInputField: InputField!
    
    @IBOutlet weak var exercisePreviewTextView: UITextView!
    @IBOutlet weak var workoutBackgroudImage: UIImageView!
    private let photoPickerHelper = PhotoPickerHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationHeaderView.configure(heading: "Add Workout", isAvatarHidden: true)
        workoutInputField.configure(heading: "Workout", placeholder: "Enter workout title", contentType: .name)
        addExerciseInputField.configure(heading: "Add Exercise", placeholder: "Enter exercises", contentType: .name)
        setsInputField.configure(heading: "Sets", placeholder: "Enter working sets", contentType: .name)
        repRangeInputField.configure(heading: "Rep Range", placeholder: "Enter rep range", contentType: .name)
        noteInputField.configure(heading: "Note", placeholder: "Add notes on exercise", contentType: .name)
        
        photoPickerHelper.delegate = self
        
        exercisePreviewTextView.styleBorder()
    }
    
    @IBAction func addExerciseBtnTapped(_ sender: Any) {
    }
    
    @IBAction func uploadPhotoBtnTapped(_ sender: Any) {
        photoPickerHelper.presentPhotoPicker(from: self)
    }
    
    @IBAction func addWorkoutBtnTapped(_ sender: Any) {
    }
}

extension UploadWorkoutVC: PhotoPickerDelegate {
    func didSelectImage(_ image: UIImage) {
        DispatchQueue.main.async {
            self.workoutBackgroudImage.image = image
        }
    }
}
