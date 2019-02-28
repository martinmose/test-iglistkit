//
// Created by Martin Mose Hansen on 2019-02-28.
// Copyright (c) 2019 Vertica A/S. All rights reserved.
//

import IGListKit

class ExtendedListDiffable: ListDiffableWithIdentifier {
    var identifier: String = UUID().uuidString
}

protocol ListDiffableWithIdentifier: ListDiffable {
    var identifier: String { get }
}

extension ExtendedListDiffable {
    func diffIdentifier() -> NSObjectProtocol {
        return identifier as NSString
    }

    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? ExtendedListDiffable else {
            return false
        }

        return self.identifier == object.identifier
    }
}
