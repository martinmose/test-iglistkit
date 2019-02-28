//
// Created by Martin Mose Hansen on 2019-02-27.
// Copyright (c) 2019 Vertica A/S. All rights reserved.
//

class TicketController: BaseController, Adapter {
    lazy var adapter = createAdapter(dataSource: DepartureDataSource())

    override func viewDidLoad() {
        super.viewDidLoad()

        _ = adapter
    }
}
