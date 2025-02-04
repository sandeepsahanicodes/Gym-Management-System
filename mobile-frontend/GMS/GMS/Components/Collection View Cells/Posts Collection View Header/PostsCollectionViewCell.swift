//
//  PostsCollectionViewCell.swift
//  GMS
//
//  Created by Sandeep Sahani on 03/02/25.
//

import UIKit

class PostsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var gridImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    public func configure(gridImage: String) {
        self.gridImage.image = UIImage(named: gridImage)
    }
}
