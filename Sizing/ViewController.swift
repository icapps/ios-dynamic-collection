//
//  ViewController.swift
//  Sizing
//
//  Created by Stijn Willems on 21/02/2017.
//  Copyright © 2017 icapps. All rights reserved.
//

import UIKit

/// Convenience class, dynamic sizing also works with regular UICollectionView
class FlowCollectionView: UICollectionView {
	var flowLayout: UICollectionViewFlowLayout {return collectionViewLayout as! UICollectionViewFlowLayout}
}

class ViewController: UIViewController, UICollectionViewDataSource {

	@IBOutlet weak var dynamicFlowCollectionView: FlowCollectionView!

	override func viewDidLoad() {
		super.viewDidLoad()
		dynamicFlowCollectionView.flowLayout.estimatedItemSize = CGSize(width: 200, height: 500)
	}

	func numberOfSections(in collectionView: UICollectionView) -> Int {
		return 1
	}

	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 50
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! CollectionViewCell

        // This line has to be done to make sure the cell sizes with autolayout
		cell.contentView.translatesAutoresizingMaskIntoConstraints = false

		let diceRoll = CGFloat(arc4random_uniform(6) + 1)

		cell.heightConstraint.constant = 2.0 * diceRoll * CGFloat(indexPath.row)
		cell.widthConstraint.constant = (50.0 / (view.bounds.size.width * diceRoll)) * CGFloat(indexPath.row)

		return cell
	}

	
}

