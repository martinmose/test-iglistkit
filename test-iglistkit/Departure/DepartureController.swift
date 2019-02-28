//
//  DepartureController.swift
//  test-iglistkit
//
//  Created by Martin Mose Hansen on 26/02/2019.
//  Copyright © 2019 Vertica A/S. All rights reserved.
//

import UIKit

class DepartureController: BaseController {
    lazy var adapter = createAdapter(dataSource: DepartureDataSource())

    override func viewDidLoad() {
        super.viewDidLoad()

        _ = adapter
    }
}
