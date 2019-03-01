//
// Created by Martin Mose Hansen on 2019-02-27.
// Copyright (c) 2019 Vertica A/S. All rights reserved.
//

import IGListKit

class TicketDataSource: NSObject, ListAdapterDataSource {
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return [
            Ticket(label: "Test 1"),
            Ticket(label: "To make a type specimen book. It has survived not only five centuries, but also t"),
            Ticket(label: "Test 2"),
            Ticket(label: "Test 3"),
            Ticket(label: "Test 4"),
            Ticket(label: "All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as " +
                    "necessary, making this the first true generator on the Internet. It uses a dictionary of " +
                    "over 200 Latin words, combined with"),
            Ticket(label: "Test 5"),
            Ticket(label: "Test 6")
        ]
    }

    func listAdapter(_ listAdapter: ListAdapter,
                     sectionControllerFor object: Any) -> ListSectionController {
        return TicketSectionController()
    }

    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}
