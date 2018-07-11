//
//  Product.swift
//  Coder_swag
//
//  Created by Ahmed SR on 7/11/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import Foundation

struct Product{
    
    private(set) public var imageName = ""
    private(set) public var title = ""
    private(set) public var price = ""
    
    init(imageName:String , title:String , price:String){
      self.imageName = imageName
        self.title = title
        self.price = price
    }

}
