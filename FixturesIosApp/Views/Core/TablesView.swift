//
//  TablesView.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 04/11/2021.
//

import Foundation
import UIKit

class TablesView: BaseView, UITableViewDataSource,
                  UITableViewDelegate {
    
    
    var tableview = UITableView()
    
    override func setup() {
        addSubview(tableview)
        tableview.fillSuperview()
        backgroundColor = .red
        tableview.dataSource = self
        tableview.delegate = self
        tableview.showsVerticalScrollIndicator = false
        tableview.register(TablesCell.self, forCellReuseIdentifier: "TablesCell")
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TablesCell") as! TablesCell
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.lightGray.withAlphaComponent(0.3)
        cell.selectedBackgroundView = backgroundView
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        CGFloat(60)
    }
    
}

class TablesCell: BaseTableViewCell {
    let containerView = UIView()
    let clubImage = UIImageView()
    let clubName = UILabel()
    let pointsOne = UILabel()
    let pointsTwo = UILabel()
    let pointsThree = UILabel()
    override func setup() {
        addSubview(containerView)
        containerView.anchor(top: topAnchor, leading: leadingAnchor,
                             bottom: bottomAnchor, trailing: trailingAnchor,
                             padding: .init(top: 15, left: 15,bottom: 10,
                                            right: 15))
        
        containerView.addSubviews(clubImage, clubName, pointsOne, pointsTwo, pointsThree)
        
        clubImage.anchor(top: containerView.topAnchor,
                        leading: containerView.leadingAnchor,
                        bottom: nil, trailing: nil)
        clubImage.image = UIImage(named: "newclub")
       
        
        clubName.anchor(top:  containerView.topAnchor,
                        leading: clubImage.trailingAnchor, bottom: nil, trailing: nil,
                        padding: .init(top: 5, left: 10,bottom: 0,
                                       right: 0))
        clubName.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        clubName.text = "Man Utd"
        
        pointsOne.anchor(top:  containerView.topAnchor,
                        leading: clubName.trailingAnchor, bottom: nil, trailing: nil,
                        padding: .init(top: 5, left: 100,bottom: 0,
                                       right: 0))
        pointsOne.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        pointsOne.text = "35"
        pointsTwo.anchor(top:  containerView.topAnchor,
                        leading: pointsOne.trailingAnchor, bottom: nil, trailing: nil,
                        padding: .init(top: 5, left: 10,bottom: 0,
                                       right: 0))
        pointsTwo.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        pointsTwo.text = "76"
        pointsThree.anchor(top:  containerView.topAnchor,
                        leading: pointsTwo.trailingAnchor, bottom: nil, trailing: nil,
                        padding: .init(top: 5, left: 10,bottom: 0,
                                       right: 0))
        pointsThree.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        pointsThree.text = "90"

    }
}


