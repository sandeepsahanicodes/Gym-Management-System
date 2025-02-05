//
//  WorkoutsVC.swift
//  GMS
//
//  Created by Sandeep Sahani on 01/02/25.
//

import UIKit

struct Workouts {
    let name: String
    let description: String
}

class WorkoutsVC: UIViewController, ProfileAvatarButtonDelegate {
    
    @IBOutlet weak var navigationHeaderView: NavigationHeaderView!
    @IBOutlet weak var workoutsTableView: UITableView!
    
    let workouts: [Workouts] = [
        // Chest Workouts
        Workouts(name: "Push Day Strength", description: "Focuses on heavy compound pressing movements for chest, shoulders, and triceps."),
        Workouts(name: "Upper Chest Builder", description: "Emphasizes incline movements to develop the upper chest."),
        Workouts(name: "Chest Hypertrophy", description: "A high-volume workout targeting muscle growth in the chest."),
        
        // Back Workouts
        Workouts(name: "Pull Day Power", description: "Heavy back workout including rows and pull-ups for strength."),
        Workouts(name: "Lat Focused Workout", description: "Designed to build width in the back with pulldowns and pull-ups."),
        Workouts(name: "Back Thickness Routine", description: "Focuses on mid-back thickness using rows and deadlifts."),
        
        // Biceps Workouts
        Workouts(name: "Arm Day Pump", description: "High-volume biceps and triceps workout for maximum muscle pump."),
        Workouts(name: "Bicep Peak Workout", description: "Focuses on shaping and defining the bicep peak."),
        
        // Triceps Workouts
        Workouts(name: "Triceps Mass Routine", description: "Designed to grow triceps using heavy presses and isolation movements."),
        
        // Shoulder Workouts
        Workouts(name: "Shoulder Strength & Size", description: "A mix of pressing and isolation exercises for well-rounded shoulder development."),
        Workouts(name: "Rear Delt & Posture Fix", description: "Focuses on rear delts and traps for better posture and shoulder health."),
        
        // Leg Workouts
        Workouts(name: "Leg Day Power", description: "Heavy squats and deadlifts for lower body strength."),
        Workouts(name: "Quad-Dominant Workout", description: "Focuses on front squats and leg press for quad growth."),
        Workouts(name: "Hamstring & Glute Focus", description: "Targets hamstrings and glutes with Romanian deadlifts and hip thrusts."),
        
        // Core Workouts
        Workouts(name: "Abs & Oblique Shred", description: "Intense core workout targeting all areas of the abs and obliques."),
        Workouts(name: "Plank & Stability Core", description: "Focuses on core stability with planks and anti-rotation exercises."),
        
        // Full-Body Workouts
        Workouts(name: "Full-Body Strength", description: "A workout covering all major muscle groups with compound lifts."),
        Workouts(name: "Athletic Conditioning", description: "A mix of strength, endurance, and explosive movements for athletic performance."),
        
        // Cardio & Fat Loss
        Workouts(name: "HIIT Fat Burner", description: "High-intensity interval training for maximum calorie burn."),
        Workouts(name: "Endurance Training", description: "Steady-state cardio combined with bodyweight exercises for endurance.")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationHeaderView.configure(heading: "Workouts",avatarImage: "sandeep")
        navigationHeaderView.delegate = self
        
        self.workoutsTableView.delegate = self
        self.workoutsTableView.dataSource = self
        
        self.workoutsTableView.register(UINib(nibName: String(describing: CardTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: CardTableViewCell.self))
    }
    
    func didProfileAvatarTapped() {
        ViewControllerFactory.push(ofType: ProfileVC.self, fromStoryboard: "Main", using: self.navigationController)
    }
}

extension WorkoutsVC: UITableViewDelegate, UITableViewDataSource, CardTableViewCellDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workouts.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier:String(describing: CardTableViewCell.self)) as? CardTableViewCell else { return UITableViewCell() }
        
        cell.configure(cardImage: UIImage(named: "chest")!, cardName: workouts[indexPath.row].name, cardDescriptioin: workouts[indexPath.row].description, cardEndDescription: nil, cardType: .exerciseUser, delegate: self)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        ViewControllerFactory.push(ofType: WorkoutVC.self, fromStoryboard: "Main", using: self.navigationController)
    }
    
    func didTapDeleteButton(cell: CardTableViewCell, didTap button: UIButton) {
        // Add logic for delete button
    }
}
