//
//  TablesViewController.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 03/11/2021.
//
import UIKit

class TablesViewController: BaseController {

    var mathesView = TablesView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        view = mathesView
        //navigationController?.hidesBarsOnSwipe = true
    }

}
