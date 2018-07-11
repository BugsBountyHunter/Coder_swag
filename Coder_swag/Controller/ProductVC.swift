//
//  ProductVC.swift
//  Coder_swag
//
//  Created by Ahmed SR on 7/11/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import UIKit

class ProductVC: UIViewController,UICollectionViewDelegate , UICollectionViewDataSource {
    //Outlets
    @IBOutlet weak var productCollection: UICollectionView!
    //var
    private (set) public var productsTitle = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
     productCollection.delegate = self
        productCollection.dataSource = self
    }
    
    // this func take title
    //category as specifice index element  item select
    func initProducts(category:Category){
        //cary all element that title contian it
        productsTitle = DataServices.instanc.getProducts(forCategory: category.title)
        navigationItem.title = category.title
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //
       return productsTitle.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //
      if  let cellCollection =  collectionView.dequeueReusableCell(withReuseIdentifier: PRODUCTS_CELL, for: indexPath) as? ProductCell {
         let productElements = productsTitle[indexPath.row]
        cellCollection.updateView(product: productElements)
        return cellCollection
        }
        return ProductCell()
    }



}
