//
// Created by Martin Mose Hansen on 2019-02-26.
// Copyright (c) 2019 Vertica A/S. All rights reserved.
//

import IGListKit

class DepartureSectionController: BaseListSectionController<Departure> {
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
