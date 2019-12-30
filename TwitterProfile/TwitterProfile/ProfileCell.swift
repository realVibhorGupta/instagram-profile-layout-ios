//
//  ProfileCell.swift
//  TwitterProfile
//
//  Created by Vibhor Gupta on 10/17/19.
//  Copyright © 2019 Vibhor Gupta. All rights reserved.
//

import Foundation
import UIKit

class ProfileCell: UICollectionViewCell {

    var image : UIImage? {
        didSet{
            guard let image = image else {return}
            profileImageView.image = image
        }
    }


    override init(frame: CGRect) {
        super.init(frame: frame)


        addSubview(profileImageView)
        profileImageView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "vibhor.jpg")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.borderWidth = 3
        iv.layer.borderColor = UIColor.white.cgColor
        return iv
    }()
}
