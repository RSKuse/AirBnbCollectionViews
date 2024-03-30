//
//  WishlistsViewController.swift
//  AirBnbCollectionViews
//
//  Created by Reuben Simphiwe Kuse on 2024/03/20.
//

import UIKit

class WishlistsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    lazy var imagesCollectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical // Change to vertical scrolling
        flowLayout.minimumLineSpacing = spacing // Spacing between rows
        flowLayout.minimumInteritemSpacing = spacing // Spacing between items in the same row
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.isPagingEnabled = true
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    lazy var titlelabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        label.text = "Wishlists"
        label.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupConstraints()
        registerCollectionCells()
    }
    
    func setupConstraints() {
        view.addSubview(imagesCollectionView)
        imagesCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        imagesCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        imagesCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        imagesCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    func registerCollectionCells() {
        imagesCollectionView.register(HousesPostCollectionCell.self, forCellWithReuseIdentifier: "HousesPostCollectionCellID")
    }


}

