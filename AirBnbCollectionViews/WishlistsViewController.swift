//
//  WishlistsViewController.swift
//  AirBnbCollectionViews
//
//  Created by Reuben Simphiwe Kuse on 2024/03/20.
//

import UIKit

class WishlistsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let spacing: CGFloat = 10
    
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
        label.font = UIFont.systemFont(ofSize: 22, weight: UIFont.Weight.semibold)
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
        view.addSubview(titlelabel)
        imagesCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        imagesCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        imagesCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        imagesCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        titlelabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        titlelabel.bottomAnchor.constraint(equalTo: imagesCollectionView.topAnchor, constant: -18).isActive = true
    }
    
    func registerCollectionCells() {
        imagesCollectionView.register(HousesPostCollectionCell.self, forCellWithReuseIdentifier: "HousesPostCollectionCellID")
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfItemsPerRow: CGFloat = 2
        let totalSpacing = (2 * spacing) + ((numberOfItemsPerRow - 1) * spacing)
        let cellWidth = (collectionView.bounds.width - totalSpacing) / numberOfItemsPerRow
        return CGSize(width: cellWidth, height: cellWidth)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let channelCollectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "HousesPostCollectionCellID", for: indexPath) as! HousesPostCollectionCell
        return channelCollectionCell
    }


}

