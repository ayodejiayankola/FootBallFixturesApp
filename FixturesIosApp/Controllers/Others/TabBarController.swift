//
//  TabBarController.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 06/11/2021.
//
import Foundation
import UIKit

class TabBarController: UITabBarController {
    let selectedColor = UIColor.red
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Tab Bar Customisation
        tabBar.barTintColor = .white
        tabBar.tintColor = .systemTeal
        tabBar.unselectedItemTintColor = .gray
        //tabBar.isTranslucent = false
        
        viewControllers = [
            createTabBarItem(tabBarImage: "soccer", viewController: TodayFixtureViewController()),
            createTabBarItem(tabBarImage: "soccer-field", viewController: CompetitionsViewController()),
        ]
    }
    
    
    func createTabBarItem(tabBarImage: String, viewController: UIViewController) -> UINavigationController {
        let navCont = UINavigationController(rootViewController: viewController)
        navCont.tabBarItem.selectedImage = UIImage(named: tabBarImage)?.withRenderingMode(.alwaysOriginal)
        navCont.tabBarItem.image = UIImage(named: tabBarImage)?.withTintColor(.red)
        navCont.navigationBar.isTranslucent = true
        return navCont
    }
}
