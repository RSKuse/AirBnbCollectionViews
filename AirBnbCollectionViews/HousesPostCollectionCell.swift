//
//  HousesPostCollectionCell.swift
//  AirBnbCollectionViews
//
//  Created by Reuben Simphiwe Kuse on 2024/03/30.
//

import Foundation
import UIKit

import UIKit

class HousesPostCollectionCell: UICollectionViewCell {
    
    var name = ""
    
    lazy var houseImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "lord_KO")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .red
        return imageView
    }()
    
    lazy var locationNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Cape Town"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    lazy var detailsOfLocationLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "City Centre"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var numberOfLocationsSavedLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray3
        label.text = "8 saved"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var labelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [locationNameLabel, detailsOfLocationLabel, numberOfLocationsSavedLabel])
        stackView.distribution = .fillProportionally
        stackView.spacing = 1.0
        stackView.alignment = .leading
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        layer.cornerRadius = 20
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.lightGray.cgColor // For boarder colour you need to add a .cgColor at the end of your colour.
        setupView()
    }
 
    func setupView() {
        addSubview(houseImageView)
        addSubview(locationNameLabel)
        addSubview(detailsOfLocationLabel)
        addSubview(numberOfLocationsSavedLabel)
        addSubview(labelStackView)

        houseImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        houseImageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        houseImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        houseImageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        labelStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
        labelStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        labelStackView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        labelStackView.widthAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
