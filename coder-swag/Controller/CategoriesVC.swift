//
//  ViewController.swift
//  coder-swag
//
//  Created by javier salgado on 5/12/18.
//  Copyright © 2018 javier salgado. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	

	@IBOutlet weak var categoryTable: UITableView!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		categoryTable.dataSource = self
		categoryTable.delegate = self
	}

	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return DataService.instance.getCategories().count
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return CGFloat(155)
	}
	
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
			let category = DataService.instance.getCategories()[indexPath.row]
			cell.updateViews(category: category)
			return cell
		} else {
			return CategoryCell()
		}
	}
	

}

