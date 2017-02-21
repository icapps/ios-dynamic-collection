//
//  CollectionViewCell.swift
//  Sizing
//
//  Created by Stijn Willems on 21/02/2017.
//  Copyright © 2017 icapps. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

	// MARK: - Dynamic constraints
	/// The constraints below can be set and changed when the cell is displayed
	@IBOutlet weak var heightConstraint: NSLayoutConstraint!
	@IBOutlet weak var widthConstraint: NSLayoutConstraint!

}
