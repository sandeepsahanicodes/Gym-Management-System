//
//  ExploreMembersVC.swift
//  GMS
//
//  Created by Sandeep Sahani on 01/02/25.
//

import UIKit

struct Member {
    let profilePicture: String?
    let name: String
    let joiningDate: String
}

class ExploreMembersVC: UIViewController {

    @IBOutlet weak var navigationHeaderView: NavigationHeaderView!
    
    @IBOutlet weak var membersTableView: UITableView!
    
    let members: [Member] = [
        Member(profilePicture: "sandeep", name: "Aarav Sharma", joiningDate: "Joined since 2021"),
        Member(profilePicture: "av2", name: "Neha Verma", joiningDate: "Joined since 2021"),
        Member(profilePicture: nil, name: "Rohan Iyer", joiningDate: "Joined since 2022"),
        Member(profilePicture: nil, name: "Priya Nair", joiningDate: "Joined since 2023"),
        Member(profilePicture: "avatar", name: "Kabir Singh", joiningDate: "Joined since 2024"),
        Member(profilePicture: nil, name: "Ananya Gupta", joiningDate: "Joined since 2021"),
        Member(profilePicture: nil, name: "Vikram Rao", joiningDate: "Joined since 2022"),
        Member(profilePicture: nil, name: "Meera Joshi", joiningDate: "Joined since 2023"),
        Member(profilePicture: nil, name: "Arjun Pillai", joiningDate: "Joined since 2021"),
        Member(profilePicture: nil, name: "Sanya Kapoor", joiningDate: "Joined since 2021")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationHeaderView.configure(heading: "Explore Members", avatarImage: "sandeep")
        self.membersTableView.delegate = self
        self.membersTableView.dataSource = self
        
        self.membersTableView.register(UINib(nibName: String(describing: PersonTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: PersonTableViewCell.self))
    }
}

extension ExploreMembersVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return members.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PersonTableViewCell.self)) as? PersonTableViewCell else {return UITableViewCell()}
        cell.configure(profilePicture: members[indexPath.row].profilePicture, name: members[indexPath.row].name, joiningDate: members[indexPath.row].joiningDate)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        guard let workoutsVC = storyboard?.instantiateViewController(identifier: String(describing: ExploreProfileVC.self)) else {
            print("View controller with storyboard id doesn't exists!")
            return
        }
        navigationController?.pushViewController(workoutsVC, animated: true)
    }
}
