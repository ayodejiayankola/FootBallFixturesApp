//
//  FixturesViewController.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 03/11/2021.
//

import UIKit

class FixturesViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.yellow
        let labelInst = UILabel()
        self.view.addSubview(labelInst)
        labelInst.text = "Page 2"
        labelInst.translatesAutoresizingMaskIntoConstraints = false
        labelInst.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50).isActive = true
        labelInst.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20).isActive = true

    }

    override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
           // Dispose of any resources that can be recreated.
       }

}
