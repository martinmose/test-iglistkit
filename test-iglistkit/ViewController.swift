//
//  ViewController.swift
//  test-iglistkit
//
//  Created by Martin Mose Hansen on 26/02/2019.
//  Copyright © 2019 Vertica A/S. All rights reserved.
//

import UIKit
import IGListKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    lazy var adapter: ListAdapter = {
        let updater = ListAdapterUpdater()
        let adapter = ListAdapter(updater: updater,
                                  viewController: self,
                                  workingRangeSize: 1)
        
        adapter.collectionView = collectionView
        adapter.dataSource = DepartureDataSource()
        return adapter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = adapter
        
        if let collectionViewFlowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            collectionViewFlowLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        }
    }
}
