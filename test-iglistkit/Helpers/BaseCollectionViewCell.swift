//
// Created by Martin Mose Hansen on 2019-02-27.
// Copyright (c) 2019 Vertica A/S. All rights reserved.
//

import UIKit

class BaseCollectionViewCell: UICollectionViewCell {
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
