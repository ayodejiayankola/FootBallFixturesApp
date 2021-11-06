//
//  TodayFixtureViewController.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 03/11/2021.
//

import Foundation
import UIKit

class TodayFixtureViewController:  BaseController, MatchRootDelegate {
    var mathesView = TodayFixtureView()
    var viewModel = TodayFixtureViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setuNavBarWithTitle(with: "Today's Fixtures")
        mathesView.setNavBarState = { [weak self] isHidden in
            self?.setNavBarState(isHidden: isHidden)
        }
        viewModel.fetchMatches()
        viewModel.delegate = self
    }
    
    override func loadView() {
        view = mathesView
        //navigationController?.hidesBarsOnSwipe = true
    }
    func DidFetchMatches(mathes: MatchRoot?) {
        mathesView.matchRoot = mathes
    }
}


