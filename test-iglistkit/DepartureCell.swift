//
// Created by Martin Mose Hansen on 2019-02-26.
// Copyright (c) 2019 Vertica A/S. All rights reserved.
//

import UIKit

class DepartureCell: UICollectionViewCell, DepartureModelUpdatable {
    @IBOutlet weak var label: UILabel!

    func updateWith(departure: Departure) {
        label.text = departure.crossingTime
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
