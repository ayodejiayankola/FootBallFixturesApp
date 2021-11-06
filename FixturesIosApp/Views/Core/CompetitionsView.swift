//
//  CompetitionsView.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 03/11/2021.
//

import Foundation
import UIKit


class CompetitionsView: BaseView, UITableViewDataSource,
                        UITableViewDelegate{
    
    let competition = [CompetitionRoot]()
    
    var competitionRoot: CompetitionRoot? {
        didSet{
            tableview.reloadData()
        }
    }
    
    var tableview = UITableView()
    var setNavBarState: ((_ isHidden: Bool) -> Void)?
    override func setup() {
        addSubview(tableview)
        tableview.fillSuperview()
        backgroundColor = .red
        tableview.dataSource = self
        tableview.delegate = self
        tableview.showsVerticalScrollIndicator = false
        tableview.register(CompetitionsCell.self, forCellReuseIdentifier: "CompetitionsCell")
    }
    
    
    func updateDataSource(comp: CompetitionRoot){
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  competitionRoot?.competitions.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CompetitionsCell") as! CompetitionsCell
        let backgroundView = UIView()
        cell.competitionName.text = competitionRoot?.competitions[indexPath.row].name
        //        let id =  competitionRoot?.competitions[indexPath.row].id ?? 0
        //        cell.homeClubScoreLbl.text  = String(id)
        backgroundView.backgroundColor = UIColor.lightGray.withAlphaComponent(0.3)
        cell.selectedBackgroundView = backgroundView
        cell.accessoryView = UIImageView(image:UIImage(named:"arrow")!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let topBarViewController = TableViewController()
        let navigat = UINavigationController()
        self.window!.rootViewController = navigat
        navigat.pushViewController(topBarViewController, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        CGFloat(60)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offset = scrollView.contentOffset.y
        if offset > 20 {
            setNavBarState?(false)
        }
        else {
            setNavBarState?(true)
        }
    }
}

class CompetitionsCell: BaseTableViewCell {
    let containerView = UIView()
    let competitionName = UILabel()
    let homeClubScoreLbl = UILabel()
    override func setup() {
        addSubview(containerView)
        containerView.anchor(top: topAnchor, leading: leadingAnchor,
                             bottom: bottomAnchor, trailing: trailingAnchor,
                             padding: .init(top: 10, left: 15,bottom: 10,
                                            right: 15))
        containerView.addSubviews(competitionName, homeClubScoreLbl)
        
        competitionName.anchor(top: containerView.topAnchor,
                               leading:  containerView.leadingAnchor, bottom: nil, trailing: nil,
                               padding: .init(top: 12, left: 16,bottom: 0,
                                              right: 0))
        competitionName.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        competitionName.text = "Bundesliga"
        
        homeClubScoreLbl.anchor(top: containerView.topAnchor,
                                leading: competitionName.trailingAnchor, bottom: nil, trailing: nil,
                                padding: .init(top: 12, left: 5,bottom: 0,
                                               right: 160))
        homeClubScoreLbl.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        homeClubScoreLbl.text = ""
    }
}


