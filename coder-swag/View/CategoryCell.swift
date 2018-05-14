//
//  CategoryCell.swift
//  coder-swag
//
//  Created by javier salgado on 5/13/18.
//  Copyright © 2018 javier salgado. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

	
	@IBOutlet weak var categoryImage: UIImageView!
	@IBOutlet weak var categoryTitle: UILabel!
	
	
	func updateViews(category: Category) {
		categoryImage.image = UIImage(named: category.imageName)
		categoryTitle.text = category.title
	}
	
	
	

}
