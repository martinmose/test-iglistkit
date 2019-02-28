//
// Created by Martin Mose Hansen on 2019-02-26.
// Copyright (c) 2019 Vertica A/S. All rights reserved.
//

protocol ItemModelUpdatable {
    associatedtype T
    func updateWith(_: T)
}
