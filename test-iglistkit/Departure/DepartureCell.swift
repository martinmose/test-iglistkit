//
// Created by Martin Mose Hansen on 2019-02-26.
// Copyright (c) 2019 Vertica A/S. All rights reserved.
//

import UIKit

class DepartureCell: UICollectionViewCell, ItemModelUpdatable {
    typealias T = Departure
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!

    func updateWith(_ data: Departure) {
        name.text = data.name
        price.text = data.price
    }

    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes)
                    -> UICollectionViewLayoutAttributes {
        setNeedsLayout()
        layoutIfNeeded()

        let size = contentView.systemLayoutSizeFitting(
                CGSize(width: layoutAttributes.frame.width, height: CGFloat.greatestFiniteMagnitude),
                withHorizontalFittingPriority: UILayoutPriority.required,
                verticalFittingPriority: UILayoutPriority.fittingSizeLevel)

        layoutAttributes.frame.size = size

        return layoutAttributes
    }
}
