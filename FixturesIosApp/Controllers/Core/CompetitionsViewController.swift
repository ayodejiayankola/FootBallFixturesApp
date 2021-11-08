//
//  CompetitionsViewController.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 03/11/2021.
//

import UIKit

class CompetitionsViewController: BaseController, CompetitionRootDelegate {
    var competitionsView = CompetitionsView()
    var viewModel = CompetitionsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setuNavBarWithTitle(with: "Competitions")
        competitionsView.setNavBarState = { [weak self] isHidden in
            self?.setNavBarState(isHidden: isHidden)
        }
        self.viewModel.fetchCompetitions()
       viewModel.competitionDelegate = self
    }
    
    override func loadView() {
        view = competitionsView
        //navigationController?.hidesBarsOnSwipe = true
    }
    func DidFetchCompetitions(competitions: CompetitionRoot?) {
        competitionsView.competitionRoot = competitions
        
    }
}

