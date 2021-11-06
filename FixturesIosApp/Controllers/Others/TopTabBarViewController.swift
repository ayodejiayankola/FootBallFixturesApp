//
//  MainTab.swift
//  SoccerTab
//
//  Created by OLALEKANAYODEJI on 06/11/2021.
//

import Foundation
import UIKit

class MainTabView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        updateMe()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override class var requiresConstraintBasedLayout: Bool {
       return true
     }
    

    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height - 100
    
    var pageVC = MyPageViewController(transitionStyle:
       UIPageViewController.TransitionStyle.scroll, navigationOrientation:
       UIPageViewController.NavigationOrientation.horizontal, options: nil)
    
    func checker(){
    print("Checker Name")
    }
       
    func updateMe(){
         stackView.addArrangedSubview(backImageButton)
         stackView.addArrangedSubview(titleBarName)
         titleBarName.textAlignment  = NSTextAlignment.center
         self.addSubview(stackView)
         NSLayoutConstraint.activate([
            backImageButton.widthAnchor.constraint(equalToConstant: 50 ),
            backImageButton.heightAnchor.constraint(equalToConstant: 50 ),
            backImageButton.topAnchor.constraint(equalTo: topAnchor,constant: 50),
            backImageButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 25),
            titleBarName.leadingAnchor.constraint(equalTo: backImageButton.trailingAnchor,constant: 40),
            
            titleBarName.centerXAnchor.constraint(equalTo: centerXAnchor)
             
         ])
         stackViewTab.addArrangedSubview(tab1)
         stackViewTab.addArrangedSubview(tab2)
         stackViewTab.addArrangedSubview(tab3)
         self.addSubview(stackViewTab)
         NSLayoutConstraint.activate([
            stackViewTab.topAnchor.constraint(equalTo: backImageButton.bottomAnchor),
            stackViewTab.widthAnchor.constraint(equalToConstant: screenWidth ),
            stackViewTab.heightAnchor.constraint(equalToConstant: 60 ),
            stackViewTab.leadingAnchor.constraint(equalTo: backImageButton.leadingAnchor),
           stackViewTab.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
         ])
        self.addSubview(tabContainerView)
        NSLayoutConstraint.activate([
            tabContainerView.topAnchor.constraint(equalTo: stackViewTab.bottomAnchor,constant: 20),
            tabContainerView.widthAnchor.constraint(equalToConstant: screenWidth),
            tabContainerView.heightAnchor.constraint(equalToConstant: screenHeight ),
            tabContainerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tabContainerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant:-20)
         
        ])
                 
    }
    
    lazy var backImageButton: UIImageView = {
       let contentView = UIImageView()
       contentView.image = UIImage(named: "arrow-left-thin")
        contentView.contentMode = .left
       contentView.translatesAutoresizingMaskIntoConstraints = false
       return contentView
     }()
    
    lazy var tabContainerView: UIView = {
       let contentView = UIView()
       contentView.translatesAutoresizingMaskIntoConstraints = false
       return contentView
     }()
    
    lazy var titleBarName: UILabel = {
        let label = UILabel()
        label.text = "Premier League Match"
        label.sizeToFit()
        label.textColor = .black
        label.contentMode = .center
        label.font = .boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let stackView : UIStackView = {
        let stackView = UIStackView(frame: CGRect(x:0,y:0,width:0,height:0))
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .equalCentering
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let stackViewTab : UIStackView = {
        let stackView = UIStackView(frame: CGRect(x:0,y:0,width:50,height:10))
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.alignment = .bottom
        stackView.isUserInteractionEnabled = true
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var tab1: UIButton = {
        let button = UIButton()
        button.tag = 1
        button.titleLabel?.font = UIFont.init(name: "Helvetica", size: 14)
        button.setTitle("Tab 1", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.white, for: .selected)
        button.backgroundColor = .cyan
        button.addTarget(self, action: #selector(tab1Clicled), for: .touchUpInside)
        return button
    }()
    lazy var tab2: UIButton = {
        let button = UIButton()
        button.tag = 2
        button.titleLabel?.font = UIFont.init(name: "Helvetica", size: 14)
        button.setTitle("Tab 2", for: .normal)
        button.setTitleColor(.cyan, for: .normal)

        button.addTarget(self, action: #selector(tab2Clicled), for: .touchUpInside)
        return button
    }()
    lazy var tab3: UIButton = {
        let button = UIButton()
        button.tag = 3
        button.titleLabel?.font = UIFont.init(name: "Helvetica", size: 14)
        button.setTitle("Tab 3", for: .normal)
        button.setTitleColor(.cyan, for: .normal)
        button.addTarget(self, action: #selector(tab3Clicled), for: .touchUpInside)
        return button
    }()
    
    @objc func tab1Clicled(){
        print("Overide tab1Clicled")
        updateButtons(selectedBtn: tab1, unselectedBtn1: tab2, unselectedBtn2: tab3)
    }
    @objc func tab2Clicled(){
        updateButtons(selectedBtn: tab2, unselectedBtn1: tab1, unselectedBtn2: tab3)
    }
    @objc func tab3Clicled(){
        updateButtons(selectedBtn: tab3, unselectedBtn1: tab2, unselectedBtn2: tab1)
    }

    func updateButtons(selectedBtn: UIButton, unselectedBtn1: UIButton, unselectedBtn2: UIButton){
            selectedBtn.setTitleColor(.white, for: .normal)
            selectedBtn.setTitleColor(.white, for: .selected)
            selectedBtn.backgroundColor = .cyan
            
            unselectedBtn1.setTitleColor(.cyan, for: .normal)
            unselectedBtn1.setTitleColor(.cyan, for: .selected)
            unselectedBtn1.backgroundColor = .white
            
            unselectedBtn2.setTitleColor(.cyan, for: .normal)
            unselectedBtn2.setTitleColor(.cyan, for: .selected)
            unselectedBtn2.backgroundColor = .white
        }
    
}
