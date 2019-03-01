//
// Created by Martin Mose Hansen on 2019-02-27.
// Copyright (c) 2019 Vertica A/S. All rights reserved.
//

import IGListKit

class BaseListSectionController<T>: ListSectionController {
    var currentItem: T?

    override func numberOfItems() -> Int {
        return 1
    }

    override final func didUpdate(to object: Any) {
        guard let item = object as? T else {
            return
        }

        currentItem = item
    }

    override func sizeForItem(at index: Int) -> CGSize {
        guard let ctx = collectionContext else {
            return CGSize(width: 0, height: 0)
        }

        let width: CGFloat = ctx.containerSize.width
        // it doesn't matter what the height is as long it is > 0.
        // it is a high number now so we don't get any constraints errors 
        let height: CGFloat = 1000

        return CGSize(width: width, height: height)
    }
}
