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

}

