//
//  ExploreProfileVC.swift
//  GMS
//
//  Created by Sandeep Sahani on 01/02/25.
//

import UIKit

class ExploreProfileVC: UIViewController {

    @IBOutlet weak var navigationHeaderView: NavigationHeaderView!
    
    @IBOutlet weak var postsCollectionView: UICollectionView!
    
    let user = User(userAvatar: nil, userName: "Sandeep Sahani", userBio: "Upcoming Software Developer at Swiggy", userPhoneNumber: "7608959749", userEmail: "sandeepsahani76j@gmail.com", userAddress: "Sambalpur, Odisha", joiningDate: "Joined at June 2021")
    let imageNames = ["sandeep","av2","avatar"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationHeaderView.configure(heading: "Explore Members",avatarImage: "sandeep")
        
        self.postsCollectionView.delegate = self
        self.postsCollectionView.dataSource = self
        
        self.postsCollectionView.register(UINib(nibName: String(describing: PostsCollectionHeaderView.self), bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: String(describing: PostsCollectionHeaderView.self))
        
        self.postsCollectionView.register(UINib(nibName: String(describing: PostsCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: PostsCollectionViewCell.self))
    }
    
}

extension ExploreProfileVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        guard let feedVC = storyboard?.instantiateViewController(withIdentifier: String(describing: FeedVC.self)) as? FeedVC else { return }
        self.navigationController?.pushViewController(feedVC, animated: true)
        print("You clicked the \(indexPath.row + 1)")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind:UICollectionView.elementKindSectionHeader, withReuseIdentifier: String(describing: PostsCollectionHeaderView.self), for: indexPath) as? PostsCollectionHeaderView else {return UICollectionReusableView()}
        headerView.configure(user: user)
        return headerView
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: PostsCollectionViewCell.self), for: indexPath) as? PostsCollectionViewCell else {return UICollectionViewCell()}
        cell.configure(gridImage: imageNames[indexPath.row])
        return cell
    }
}

extension ExploreProfileVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewWidth = collectionView.bounds.width
        return CGSize(width: (collectionViewWidth / 3) - 2, height: (collectionViewWidth / 3) - 2)
    }
    
    // Horizontal spacing
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    // Vertical spacing
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
}

