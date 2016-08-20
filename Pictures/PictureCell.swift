//
//  PictureCell.swift
//  Pictures
//
//  Created by Pavel Pantus on 8/20/16.
//  Copyright © 2016 Pavel Pantus. All rights reserved.
//

import UIKit

class PictureCell: UICollectionViewCell {
    private var picture = UIImageView()

    public class func reuseIdentifier() -> String {
        return String(describing: self)
    }
    
    override func prepareForReuse() {
        picture.image = nil
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
        picture.translatesAutoresizingMaskIntoConstraints = false

        contentView.addSubview(picture)
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[picture]|",
                                                      options: [],
                                                      metrics: nil,
                                                      views: ["picture": picture]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[picture]|",
                                                      options: [],
                                                      metrics: nil,
                                                      views: ["picture": picture]))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public func configureWithImage(_ image: UIImage) {
        picture.image = image
    }

}
