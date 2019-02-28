//
// Created by Martin Mose Hansen on 2019-02-27.
// Copyright (c) 2019 Vertica A/S. All rights reserved.
//

import IGListKit

class Ticket: ExtendedListDiffable {
    private(set) var label: String

    init(label: String) {
        self.label = label
    }
}
