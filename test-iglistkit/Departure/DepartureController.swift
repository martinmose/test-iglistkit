//
//  DepartureController.swift
//  test-iglistkit
//
//  Created by Martin Mose Hansen on 26/02/2019.
//  Copyright © 2019 Vertica A/S. All rights reserved.
//

import UIKit
import IGListKit

class DepartureController: UIViewController {    
    lazy var adapter: ListAdapter = {
        return ListAdapter(
                updater: ListAdapterUpdater(),
                viewController: self,
                workingRangeSize: 0)
    }()

    let collectionView: UICollectionView = {
        let view = UICollectionView(
                frame: .zero,
                collectionViewLayout: UICollectionViewFlowLayout())

        view.backgroundColor = .white
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(collectionView)

        adapter.collectionView = collectionView
        adapter.dataSource = self
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
}

extension DepartureController: ListAdapterDataSource {
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return [
            Departure(
                name: "Test 1",
                price: "100"
            ),
            Departure(
                name: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                price: "200"
            ),
            Departure(
                name: "Test 3",
                price: "300"
            ),
            Departure(
                name: "It is a long established fact that a reader will be distracted by the readable content " +
                    "of a page when looking at its layout. The point of using Lorem Ipsum is that it has a " +
                    "more-or-less normal distribution of letters, as opposed to using 'Content here, " +
                "content here', making it look like readable English.",
                price: "400"
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
