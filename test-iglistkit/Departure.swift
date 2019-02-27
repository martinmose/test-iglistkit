//
//  Departure.swift
//  test-iglistkit
//
//  Created by Martin Mose Hansen on 26/02/2019.
//  Copyright © 2019 Vertica A/S. All rights reserved.
//

import IGListKit
import SwiftDate

class Departure {
    private var identifier: String = UUID().uuidString
    private(set) var id: String
    private(set) var lastUpdatedTime: DateInRegion
    private(set) var departureTime: DateInRegion
    private(set) var crossingTime: String
    private(set) var price: String?

    init(
        id: String,
        departureTime: DateInRegion,
        crossingTime: String,
        price: String?,
        lastUpdatedTime: DateInRegion) {
        self.id = id
        self.departureTime = departureTime
        self.crossingTime = crossingTime
        self.price = price
        self.lastUpdatedTime = lastUpdatedTime
    }
}

extension Departure: ListDiffable {
    func diffIdentifier() -> NSObjectProtocol {
        return identifier as NSString
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? Departure else {
            return false
        }
        
        return self.identifier == object.identifier
    }
}
