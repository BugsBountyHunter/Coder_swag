//
//  CatrgoryCellVC.swift
//  Coder_swag
//
//  Created by Ahmed SR on 7/10/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import UIKit

class CatrgoryCellVC: UITableViewCell {

    @IBOutlet weak var titleCategory:UILabel!
    @IBOutlet weak var backgroundImage:UIImageView!

    func updateView(category:Category){
        titleCategory.text  = category.title
        backgroundImage.image = UIImage(named: category.imageName)
        
    }
 
}
