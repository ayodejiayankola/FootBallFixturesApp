//
//  TableViewController.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 03/11/2021.
//

import UIKit

class TableViewController: BaseController {

    var mathesView = TablesView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        view = mathesView
        //navigationController?.hidesBarsOnSwipe = true
    }

}
