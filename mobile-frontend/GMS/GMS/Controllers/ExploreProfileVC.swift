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
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 150
    }
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind:UICollectionView.elementKindSectionHeader, withReuseIdentifier: String(describing: PostsCollectionHeaderView.self), for: indexPath) as? PostsCollectionHeaderView else {return UICollectionReusableView()}
        headerView.frame.size.height = 250
        return headerView
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: PostsCollectionViewCell.self), for: indexPath) as? PostsCollectionViewCell else {return UICollectionViewCell()}
//         cell.backgroundColor = .red
        return cell
    }
    
    
}
