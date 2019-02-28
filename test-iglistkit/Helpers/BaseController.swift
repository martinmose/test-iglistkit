//
// Created by Martin Mose Hansen on 2019-02-27.
// Copyright (c) 2019 Vertica A/S. All rights reserved.
//

import UIKit
import IGListKit

class BaseController: UIViewController {
    @IBOutlet weak final var collectionView: UICollectionView!

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

        if let collectionViewFlowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            collectionViewFlowLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        }
    }
}
