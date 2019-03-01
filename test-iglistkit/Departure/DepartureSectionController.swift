//
// Created by Martin Mose Hansen on 2019-02-26.
// Copyright (c) 2019 Vertica A/S. All rights reserved.
//

import IGListKit

//class DepartureSectionController: BaseListSectionController<Departure> {
class DepartureSectionController: ListSectionController {
    var currentItem: Departure!

    override final func numberOfItems() -> Int {
        return 1
    }

    override func didUpdate(to object: Any) {
        guard let item = object as? Departure else {
            return
        }

        currentItem = item
    }

    override final func sizeForItem(at index: Int) -> CGSize {
        guard let ctx = collectionContext else {
            return CGSize(width: 0, height: 0)
        }

        let width: CGFloat = ctx.containerSize.width
        // it doesn't matter what the height is as long it is > 0.
        // it is a high number now so we don't get any constraints errors 
        let height: CGFloat = 100

        return CGSize(width: width, height: height)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let nibName = String(describing: DepartureCell.self)

        guard let ctx = collectionContext, let departure = currentItem else {
            return UICollectionViewCell()
        }

        let cell = ctx.dequeueReusableCell(withNibName: nibName,
                bundle: nil,
                for: self,
                at: index)

        guard let departureCell = cell as? DepartureCell else {
            return cell
        }

        departureCell.updateWith(departure)

        return departureCell
    }
}
