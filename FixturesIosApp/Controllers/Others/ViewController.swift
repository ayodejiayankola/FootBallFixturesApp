//
//  ViewController.swift
//  SoccerTab
//
//  Created by Ayodejii Ayankola on 06/11/2021.
//

import UIKit

class ViewController: UIViewController {    
    override var shouldAutorotate: Bool {
            return false
        }
        override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
            return .portrait
        }

        override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
            return .portrait
        }
    
    var mainTabView = MainTabView()
    var currentSelectedBtn = 0
    var pageVC = MyPageViewController(transitionStyle:
       UIPageViewController.TransitionStyle.scroll, navigationOrientation:
       UIPageViewController.NavigationOrientation.horizontal, options: nil)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        let screen = UIScreen.main.bounds
                 mainTabView = MainTabView.init(frame: CGRect(origin: CGPoint(x: 0,y: 10), size: CGSize(width: screen.width, height: screen.height)))
        self.view.addSubview(mainTabView)
        self.addChild(pageVC)
        mainTabView.tabContainerView.addSubview(pageVC.view)
        NotificationCenter.default.addObserver(self, selector: #selector(self.changeIndex(_:)), name: NSNotification.Name(rawValue: "updateTabs"), object: nil)
        validateClick()
    }
    
    
    
    func validateClick(){
        mainTabView.tab1.addTarget(self, action: #selector(trigger1), for: .touchUpInside)
        mainTabView.tab2.addTarget(self, action: #selector(trigger2), for: .touchUpInside)
        mainTabView.tab3.addTarget(self, action: #selector(trigger3), for: .touchUpInside)

    }
    @objc  func trigger2(){
        pageVC.changeViewController(currentIndex: currentSelectedBtn, nextIndex: 1)
                currentSelectedBtn=1
    }
    @objc  func trigger3(){
        pageVC.changeViewController(currentIndex: currentSelectedBtn, nextIndex: 2)
               currentSelectedBtn=2
    }
    
     @objc  func trigger1(){
         pageVC.changeViewController(currentIndex: currentSelectedBtn, nextIndex: 0)
                 currentSelectedBtn=0
    }
    
    
    @objc func changeIndex(_ notification: NSNotification){
        
             if let dict = notification.userInfo as NSDictionary? {
                 if let index = dict["index"] as? Int{
                     switch index {
                     case 0:
                         mainTabView.updateButtons(selectedBtn: mainTabView.tab1, unselectedBtn1: mainTabView.tab2, unselectedBtn2: mainTabView.tab3)
                      currentSelectedBtn = 0

                     case 1:
                         mainTabView.updateButtons(selectedBtn: mainTabView.tab2, unselectedBtn1: mainTabView.tab1, unselectedBtn2: mainTabView.tab3)
                      currentSelectedBtn = 1

                     case 2:
                         mainTabView.updateButtons(selectedBtn: mainTabView.tab3, unselectedBtn1: mainTabView.tab1, unselectedBtn2: mainTabView.tab2)
                      currentSelectedBtn = 2


                     default:
                         mainTabView.updateButtons(selectedBtn: mainTabView.tab3, unselectedBtn1: mainTabView.tab1, unselectedBtn2: mainTabView.tab2)
                      currentSelectedBtn = 0
                  }
              }
          }
      }
    
}


