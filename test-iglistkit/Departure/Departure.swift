//
//  Departure.swift
//  test-iglistkit
//
//  Created by Martin Mose Hansen on 26/02/2019.
//  Copyright © 2019 Vertica A/S. All rights reserved.
//

class Departure: ExtendedListDiffable {
    private(set) var name: String
    private(set) var price: String

    init(name: String, price: String) {
        self.name = name
        self.price = price
    }
}
