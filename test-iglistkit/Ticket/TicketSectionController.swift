//
// Created by Martin Mose Hansen on 2019-02-27.
// Copyright (c) 2019 Vertica A/S. All rights reserved.
//

import IGListKit

class TicketSectionController: BaseListSectionController<Ticket> {
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let nibName = String(describing: TicketCell.self)

        guard let ctx = collectionContext, let ticket = currentItem else {
            return UICollectionViewCell()
        }

        let cell = ctx.dequeueReusableCell(withNibName: nibName,
                bundle: nil,
                for: self,
                at: index)

        guard let ticketCell = cell as? TicketCell else {
            return cell
        }

        ticketCell.updateWith(ticket)

        return ticketCell
    }
}
