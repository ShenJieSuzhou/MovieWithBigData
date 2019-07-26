//
//  ProductViewController.swift
//  MLMovies
//
//  Created by shenjie on 2019/4/22.
//  Copyright © 2019年 shenjie. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    var product: Product?
    
    @IBOutlet weak var cartBtn: UIButton!
    
    @IBOutlet weak var phoneName: UILabel!
    
    @IBOutlet weak var productImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        phoneName.text = product?.name
        if let imageName = product?.fullScreenImageName{
            productImageView.image = UIImage(named: imageName)
        }
    }

    @IBAction func clickAddCartBtn(_ sender: Any) {
        print("Add to cart successfully")
    }
}
