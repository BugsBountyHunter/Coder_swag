//
//  DataServices.swift
//  Coder_swag
//
//  Created by Ahmed SR on 7/10/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import Foundation

class DataServices{
    
    static let instanc = DataServices()
    
   private let categories = [
    Category(title: "SHIRTS", imageName: "shirts.png"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() ->[Category]{
        return categories
    }
    
}
