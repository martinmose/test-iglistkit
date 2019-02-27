//
// Created by Martin Mose Hansen on 2019-02-26.
// Copyright (c) 2019 Vertica A/S. All rights reserved.
//

import IGListKit
import SwiftDate

class DepartureDataSource: NSObject, ListAdapterDataSource {
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return [
            Departure(
                    id: "1",
                    departureTime: DateInRegion(year: 2019, month: 1, day: 1),
                    crossingTime: "Test 1",
                    price: "100",
                    lastUpdatedTime: DateInRegion(year: 2019, month: 1, day: 1)
            ),
            Departure(
                    id: "2",
                    departureTime: DateInRegion(year: 2019, month: 2, day: 2),
                    crossingTime: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    price: "200",
                    lastUpdatedTime: DateInRegion(year: 2019, month: 2, day: 2)
            ),
            Departure(
                    id: "3",
                    departureTime: DateInRegion(year: 2019, month: 3, day: 3),
                    crossingTime: "Test 3",
                    price: "300",
                    lastUpdatedTime: DateInRegion(year: 2019, month: 3, day: 3)
            ),
            Departure(
                    id: "4",
                    departureTime: DateInRegion(year: 2019, month: 4, day: 4),
                    crossingTime: "Test 4",
                    price: "400",
                    lastUpdatedTime: DateInRegion(year: 2019, month: 4, day: 4)
            )
        ]
    }

    func listAdapter(_ listAdapter: ListAdapter,
                     sectionControllerFor object: Any) -> ListSectionController {
        return DepartureSectionController()
    }

    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}
