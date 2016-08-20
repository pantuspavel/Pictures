//
//  PicturesCollectionController.swift
//  Pictures
//
//  Created by Pavel Pantus on 8/20/16.
//  Copyright © 2016 Pavel Pantus. All rights reserved.
//

import UIKit

class PicturesCollectionController: UICollectionViewController,
                                    UICollectionViewDelegateFlowLayout {

    private let picturesCount = 16

    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView!.register(PictureCell.self, forCellWithReuseIdentifier: PictureCell.reuseIdentifier())
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return picturesCount
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PictureCell.reuseIdentifier(), for: indexPath) as! PictureCell

        cell.configureWithImage(UIImage(named: "p\(indexPath.row + 1)")!)

        return cell
    }

    // MARK: UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }

}
