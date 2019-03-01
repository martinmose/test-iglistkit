//
// Created by Martin Mose Hansen on 2019-02-27.
// Copyright (c) 2019 Vertica A/S. All rights reserved.
//

import UIKit
import IGListKit

class BaseController: UIViewController {
    // added because of no storyboard
    let collectionView: UICollectionView = {
        let view = UICollectionView(
                frame: .zero,
                collectionViewLayout: UICollectionViewFlowLayout())
        
        view.backgroundColor = .white
        
        return view
    }()

    public final func createAdapter(dataSource: ListAdapterDataSource) -> ListAdapter {
        let updater = ListAdapterUpdater()
        let adapter = ListAdapter(
                updater: updater,
                viewController: self,
                workingRangeSize: 1
        )

        adapter.collectionView = collectionView
        adapter.dataSource = dataSource

        return adapter
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // added because of no storyboard
        view.addSubview(collectionView)
        
        if let collectionViewFlowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            collectionViewFlowLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        }
    }

    // added because of no storyboard
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
}
