//
//  Product.swift
//  MLMovies
//
//  Created by shenjie on 2019/4/22.
//  Copyright © 2019年 shenjie. All rights reserved.
//

import Foundation

class Product {
    var name: String?
    var cellImageName: String?
    var fullScreenImageName: String?
    
    init(name: String, cellImageName: String, fullScreenImageName: String){
        self.name = name
        self.cellImageName = cellImageName
        self.fullScreenImageName = fullScreenImageName
    }
}
