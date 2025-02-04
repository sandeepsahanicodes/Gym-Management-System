//
//  FeedVC.swift
//  GMS
//
//  Created by Sandeep Sahani on 04/02/25.
//

import UIKit

struct FeedData {
    let userAvatar: String?
    let userName: String
    let joiningDate: String
    let postImage: String
    let postCaption: String
}
class FeedVC: UIViewController {

    @IBOutlet weak var navigationHeaderView: NavigationHeaderView!
    @IBOutlet weak var feedTableView: UITableView!
    
    let feedDataArray: [FeedData] = [
        FeedData(
            userAvatar: "https://i.pravatar.cc/250?u=sampleuser1",
            userName: "John Doe",
            joiningDate: "Jan 15, 2023",
            postImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVorJPsPf1AEnaZln-UMfTlt7YykSc_venBQ&s",
            postCaption: "Had an amazing workout session today! #fitness #grind"
        ),
        FeedData(
            userAvatar: "https://i.pravatar.cc/250?u=sampleuser2",
            userName: "Emma Smith",
            joiningDate: "Feb 20, 2022",
            postImage: "https://i.pravatar.cc/250?u=sampleuser2",
            postCaption: "Exploring the mountains! 🏔️"
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationHeaderView.configure(heading: "Explore Members", avatarImage: "sandeep")
        self.feedTableView.delegate = self
        self.feedTableView.dataSource = self
        
        self.feedTableView.register(UINib(nibName: String(describing: FeedTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: FeedTableViewCell.self))

    }
}

extension FeedVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feedDataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: FeedTableViewCell.self), for: indexPath) as? FeedTableViewCell else {return UITableViewCell()}
        cell.configure(userAvatar: feedDataArray[indexPath.row].userAvatar, userName: feedDataArray[indexPath.row].userName, joiningDate: feedDataArray[indexPath.row].joiningDate, postImage: feedDataArray[indexPath.row].postImage, postCaption: feedDataArray[indexPath.row].postCaption)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
}
