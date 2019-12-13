//
//  CollectionContainerView.swift
//  SampleCollectionView
//
//  Created by Divum on 13/12/19.
//  Copyright © 2019 Divum. All rights reserved.
//
import UIKit
class CollectionContainerView: UIView {
    static let identifier = String(describing: CollectionContainerView.self)
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    var screenHeight = UIScreen.main.bounds.size.height
    var screenWidth = UIScreen.main.bounds.size.width
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        Bundle.main.loadNibNamed(CollectionContainerView.identifier, owner: self, options: nil)
        setupContainerView()
    }

    private func setupContainerView() {
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    func setupCollectionContainerView() {
        let layout = UICollectionViewFlowLayout()
        collectionView.register(UINib(nibName: ImageCollectionViewCell.identifer, bundle: nil), forCellWithReuseIdentifier: ImageCollectionViewCell.identifer)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.isPagingEnabled = false
        collectionView.allowsMultipleSelection = true
        layout.scrollDirection = .vertical
    }
}
