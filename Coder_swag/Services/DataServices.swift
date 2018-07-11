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
// 1- TabelView Data services
   private let categories = [
    Category(title: "SHIRTS", imageName: "shirts.png"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() ->[Category]{
        return categories
    }
    
    // 2-CollectionView Data Services
    // Data as array take  product class
    private let hats = [
        Product(imageName: "hat01.png", title: "Devslopes Logo Beanie", price: "$18"),
    Product(imageName: "hat02.png", title: "Devslopes Logo Hat Black", price: "$22"),
    Product(imageName: "hat03.png", title: "Devslopes Logo Hat Withe", price: "$22"),
    Product(imageName: "hat04.png", title: "Devslopes Logo Hat snapback", price: "$20")
    ]
    private let hoodies = [
        Product(imageName: "hoodie01.png", title: "Devslopes Logo hoodie Gray", price: "$32"),
        Product(imageName: "hoodie02.png", title: "Devslopes Logo hoodie Red", price: "$32"),
        Product(imageName: "hoodie03.png", title: "Devslopes hoodies Grey", price: "$32"),
        Product(imageName: "hoodie04.png", title: "Devslopes hoodies Black", price: "$32")]
    
    private let shirtsArray = [
        Product(imageName: "shirt01", title: "Devslopes logo Shirt Black", price: "$18"),
        Product(imageName: "shirt02", title: "Devslopes Badge Shirt light Gray", price: "$19"),
        Product(imageName: "shirt03", title: "Devslopes Logo Shirt Red", price: "$18"),
        Product(imageName: "shirt04", title: "Hustle Delegate Gray", price: "$18"),
        Product(imageName: "shirt05", title: "Kickflip studios Black", price: "$18")]
    
    private let digital = [Product]()
    
    
    // Return array of product type
    func getHats() ->[Product]{
        return hats
    }
    func getHoodies() ->[Product]{
        return hoodies
    }
    func getShirts() ->[Product]{
        return shirtsArray
    }
    func getDigitalGoods() ->[Product]{
        return digital
    }
    //.... used it when use select one item from listView ... take title of item and get custom of retrun func 
    func getProducts(forCategory title:String) ->[Product]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL" :
            return getDigitalGoods()
        default:
            return getShirts()
        }
        
    }
    
    
}
