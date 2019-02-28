//
// Created by Martin Mose Hansen on 2019-02-27.
// Copyright (c) 2019 Vertica A/S. All rights reserved.
//

import UIKit

class TicketCell: BaseCollectionViewCell, ItemModelUpdatable {
    typealias T = Ticket

    @IBOutlet weak var label: UILabel!

    func updateWith(_ data: Ticket) {
        label.text = data.label
    }
}
