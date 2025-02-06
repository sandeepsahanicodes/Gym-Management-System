//
//  WorkoutVC.swift
//  GMS
//
//  Created by Sandeep Sahani on 01/02/25.
//

import UIKit

struct Exercise {
    let name: String
    let description: String
}

class WorkoutVC: UIViewController, ProfileAvatarButtonDelegate {
    
    @IBOutlet weak var navigationHeaderView: NavigationHeaderView!
    @IBOutlet weak var exerciseTableView: UITableView!
    
    let chestExercises: [Exercise] = [
        Exercise(
            name: "Barbell Bench Press",
            description: "Goal: Strength & size\nSets/Reps: 4 sets of 6-8 reps\nRest: 2-3 minutes\nNotes: Use a challenging weight that allows you to complete the reps with proper form."
        ),
        Exercise(
            name: "Incline Dumbbell Press",
            description: "Goal: Upper chest development\nSets/Reps: 3-4 sets of 8-10 reps\nRest: 2 minutes\nNotes: Keep a controlled motion and avoid bouncing the weights."
        ),
        Exercise(
            name: "Decline Bench Press",
            description: "Goal: Lower chest strength\nSets/Reps: 3-4 sets of 8-10 reps\nRest: 2 minutes\nNotes: Focus on a full range of motion and controlled movement."
        ),
        Exercise(
            name: "Dumbbell Flyes",
            description: "Goal: Chest muscle stretch & definition\nSets/Reps: 3 sets of 10-12 reps\nRest: 1-2 minutes\nNotes: Maintain a slight bend in the elbows and focus on the stretch."
        ),
        Exercise(
            name: "Cable Crossovers",
            description: "Goal: Chest isolation & definition\nSets/Reps: 3 sets of 12-15 reps\nRest: 1 minute\nNotes: Squeeze your chest at the peak of each rep and control the motion."
        ),
        Exercise(
            name: "Push-Ups",
            description: "Goal: Endurance & bodyweight strength\nSets/Reps: 3-4 sets of 15-20 reps\nRest: 1 minute\nNotes: Keep your core engaged and maintain proper form throughout."
        ),
        Exercise(
            name: "Chest Dips",
            description: "Goal: Lower chest & triceps strength\nSets/Reps: 3 sets of 8-12 reps\nRest: 2 minutes\nNotes: Lean slightly forward to target the chest more."
        ),
        Exercise(
            name: "Machine Chest Press",
            description: "Goal: Controlled chest muscle activation\nSets/Reps: 3 sets of 10-12 reps\nRest: 1-2 minutes\nNotes: Keep the motion smooth and controlled to maximize muscle engagement."
        )
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationHeaderView.configure(heading: "Chest", avatarImage: "sandeep")
        navigationHeaderView.delegate = self
        
        self.exerciseTableView.delegate = self
        self.exerciseTableView.dataSource = self
        self.exerciseTableView.register(UINib(nibName: String(describing: InfoTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: InfoTableViewCell.self))
    }
    
    func didProfileAvatarTapped() {
        NavigationManager.push(ofType: ProfileVC.self, fromStoryboard: "Main", using: self.navigationController)
    }
}

extension WorkoutVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chestExercises.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: InfoTableViewCell.self)) as? InfoTableViewCell else {return UITableViewCell()}
        cell.configure(heading: chestExercises[indexPath.row].name, infoDescription: chestExercises[indexPath.row].description, infoType: .exerciseInfo)
        return cell
    }
    
    
}
