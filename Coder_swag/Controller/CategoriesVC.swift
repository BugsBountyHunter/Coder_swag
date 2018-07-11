//
//  ViewController.swift
//  Coder_swag
//
//  Created by Ahmed SR on 7/10/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController , UITableViewDataSource , UITableViewDelegate {
    @IBOutlet weak var categoryTabel:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      categoryTabel.delegate = self
      categoryTabel.dataSource = self
        
    }
  
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //
        if let cell = tableView.dequeueReusableCell(withIdentifier: REUSE_CELL_IDENTIFIR) as? CatrgoryCellVC {
        let category = DataServices.instanc.getCategories()[indexPath.row] //number 0,1,2,3,.
        cell.updateView(category: category) // category have an struct (title) , (imageName)
        return cell
        }else {
        return CatrgoryCellVC()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //
        return DataServices.instanc.getCategories().count
    }

    func configureTableview(){
        categoryTabel.rowHeight = UITableViewAutomaticDimension
        categoryTabel.estimatedRowHeight = 40.0
        
    }
    // select item from listview
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // take index number from array
        let categoryItem = DataServices.instanc.getCategories()[indexPath.row]
                                                // sender >> take index number like 0,1,2,3....
        performSegue(withIdentifier: TO_PRODUCTS, sender: categoryItem)
        /*
         for example like if categoryItem = 0 that mine categoryItem contain two var (title : "SHIRTS" , imageName :"shirts.png") all  that saved in sender
 */
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // send all contian element of index 0,1,2... as sender
        if let productsVC = segue.destination as? ProductVC {
             let UIBtn = UIBarButtonItem()
            UIBtn.title = ""
            navigationItem.backBarButtonItem = UIBtn
            assert(sender as? Category != nil) //retrn boolean
                                   // sender as number but I send it as Category that contian (title , image String )
            // Casting from index number sender to category element in this index and secand view while take title from category as like
            productsVC.initProducts(category: sender as! Category)
        }
    }

}

