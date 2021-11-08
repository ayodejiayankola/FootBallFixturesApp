//
//  TodayFixtureView.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 03/11/2021.
//


import Foundation
import UIKit

class TodayFixtureView: BaseView, UITableViewDataSource,
                        UITableViewDelegate {
    
    var todayMatch = [TodayFixtureModel]()
    
    var matchRoot: MatchRoot? {
        didSet {
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
        tableview.register(MatchesCell.self, forCellReuseIdentifier: "MatchesCell")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matchRoot?.count ?? 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MatchesCell") as! MatchesCell
        let backgroundView = UIView()


        let homeScore = matchRoot?.matches[indexPath.row].score?.fullTime?.homeTeam.value
        cell.homeClubScoreLbl.text = "\(homeScore ?? 0) "
        let awayScore = matchRoot?.matches[indexPath.row].score?.fullTime?.awayTeam.value
        cell.awayClubScoreLbl.text = "\(awayScore ?? 0)"
        
        cell.homeClubNameLbl.text = matchRoot?.matches[indexPath.row].homeTeam?.name
        cell.awayClubNameLbl.text = matchRoot?.matches[indexPath.row].awayTeam?.name
        let matchDay = matchRoot?.matches[indexPath.row].matchday ?? 0
        cell.mdLbl.text = "MD: \(String(matchDay))"
        let date = matchRoot?.matches[indexPath.row].utcDate ?? ""
        let result =  DateManager.isValidDate(dateString: date)
        let dateResult = result.prefix(5)
        cell.timeLbl.text = String(dateResult)
        backgroundView.backgroundColor = UIColor.lightGray.withAlphaComponent(0.3)
        cell.selectedBackgroundView = backgroundView
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        CGFloat(100)
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

class MatchesCell: BaseTableViewCell {
    let containerView = UIView()
    let timedLbl = UILabel()
    let timeLbl = UILabel()
    let mdLbl = UILabel()
    let minLbl = UILabel()
    let homeClubNameLbl = UILabel()
    let awayClubNameLbl = UILabel()
    let homeClubScoreLbl = UILabel()
    let awayClubScoreLbl = UILabel()
    override func setup() {
        addSubview(containerView)
        containerView.anchor(top: topAnchor, leading: leadingAnchor,
                             bottom: bottomAnchor, trailing: trailingAnchor,
                             padding: .init(top: 10, left: 15,bottom: 10,
                                            right: 15))
        containerView.addSubviews(timedLbl,timeLbl, mdLbl,
                                  homeClubNameLbl, awayClubNameLbl,
                                  homeClubScoreLbl, minLbl, awayClubScoreLbl)
        timedLbl.anchor(top: containerView.topAnchor,
                        leading: containerView.leadingAnchor,
                        bottom: nil, trailing: nil)
        timedLbl.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        timedLbl.text = "Timed"
        timeLbl.anchor(top: timedLbl.bottomAnchor,
                       leading: containerView.leadingAnchor, bottom: nil, trailing: homeClubNameLbl.trailingAnchor,
                       padding: .init(top: 10, left: 1,bottom: 0,
                                      right: 10))
        timeLbl.font = UIFont.systemFont(ofSize: 10, weight: .light)
        timeLbl.text = "10:30"
        
        mdLbl.anchor(top: timeLbl.bottomAnchor,
                     leading: containerView.leadingAnchor, bottom: nil, trailing: homeClubNameLbl.leadingAnchor,
                     padding: .init(top: 10, left: 0,bottom: 0,
                                    right: 0))
        mdLbl.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        mdLbl.text = "MD:39"
        mdLbl.textColor = .lightGray
        
        homeClubNameLbl.anchor(top: containerView.topAnchor,
                               leading: timedLbl.trailingAnchor, bottom: nil, trailing: nil,
                               padding: .init(top: 12, left: 16,bottom: 0,
                                              right: 0))
        homeClubNameLbl.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        homeClubNameLbl.text = "AS Avellinno 1983"
        
        awayClubNameLbl.anchor(top: homeClubNameLbl.bottomAnchor,
                               leading: timedLbl.trailingAnchor, bottom: nil, trailing: nil,
                               padding: .init(top: 12, left: 16,bottom: 0,
                                              right: 0))
        awayClubNameLbl.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        awayClubNameLbl.text = "AS Citadella 1983"
        
        homeClubScoreLbl.anchor(top: containerView.topAnchor,
                                leading: nil, bottom: nil, trailing: containerView.trailingAnchor,
                                padding: .init(top: 12, left: 0,bottom: 0,
                                               right: 0))
        homeClubScoreLbl.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        homeClubScoreLbl.text = "0"
        
        minLbl.anchor(top: homeClubScoreLbl.bottomAnchor,
                      leading: nil, bottom: nil, trailing: containerView.trailingAnchor,
                      padding: .init(top: 2, left: 0,bottom: 0,
                                     right: 10))
        minLbl.font = UIFont.systemFont(ofSize: 11, weight: .semibold)
        minLbl.text = "90\""
        minLbl.textColor = .lightGray
        
        awayClubScoreLbl.anchor(top: homeClubScoreLbl.bottomAnchor,
                                leading: nil, bottom: nil, trailing: containerView.trailingAnchor,
                                padding: .init(top: 12, left: 0,bottom: 0,
                                               right: 0))
        awayClubScoreLbl.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        awayClubScoreLbl.text = "0"
        
        
    }
}


