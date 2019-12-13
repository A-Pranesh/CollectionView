//
//  ImageCollectionViewCell.swift
//  SampleCollectionView
//
//  Created by Divum on 13/12/19.
//  Copyright © 2019 Divum. All rights reserved.
//
import UIKit
class ImageCollectionViewCell: UICollectionViewCell {
    static let identifer = String(describing: ImageCollectionViewCell.self)
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override var isSelected: Bool {
        didSet {
            labelView.isHidden = isSelected ? false : true
        }
    }
    
    func setupImageCollectionViewCell() {
        imageView.image = UIImage(named: "swiftIcon")
        labelView.text = "Swift"
        labelView.isHidden = true
    }
}
