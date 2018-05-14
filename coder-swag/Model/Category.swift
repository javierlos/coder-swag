//
//  Category.swift
//  coder-swag
//
//  Created by javier salgado on 5/13/18.
//  Copyright © 2018 javier salgado. All rights reserved.
//

import Foundation


struct Category {
	private(set) public var title: String
	private(set) public var imageName: String
	
	init(title: String, imageName: String) {
		self.title = title
		self.imageName = imageName
		
	}
	
	
}
