//
//  ProductCell.swift
//  Coder_swag
//
//  Created by Ahmed SR on 7/11/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage:UIImageView!
    @IBOutlet weak var productTitle:UILabel!
    @IBOutlet weak var productPrice:UILabel!
    
    func updateView(product:Product){
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
    
}
