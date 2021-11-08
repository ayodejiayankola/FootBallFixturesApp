//
//  FixturesViewController.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 03/11/2021.
//

import UIKit



class FixturesViewController: BaseController {

    let soccerImage: UIImageView = {
        let imageResponse = UIImageView()
        imageResponse.image = UIImage(named: "testing")
        imageResponse.translatesAutoresizingMaskIntoConstraints = false
        return imageResponse
    }()
    var textLabel: UILabel = {
        let label = UILabel()
        label.text = "No Fixtures"
        label.font = .systemFont(ofSize: 20, weight: UIFont.Weight.medium)
        label.textColor = .darkGray
        label.textAlignment = .center
   label.translatesAutoresizingMaskIntoConstraints = false
        return label

    }()
    let stackView : UIStackView = {
        let stackView = UIStackView(frame: CGRect(x:0,y:0,width:100,height:100))
        stackView.axis = .vertical
        stackView.backgroundColor = .green
        stackView.spacing = 10
        stackView.distribution = .equalCentering
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubviews(soccerImage)
        view.addSubviews(textLabel)
        
        setup()
    }
//
    func setup(){
        soccerImage.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50).isActive = true
        soccerImage.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 100).isActive = true
        
        textLabel.topAnchor.constraint(equalTo: self.soccerImage.bottomAnchor, constant: 20).isActive = true
        textLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 100).isActive = true
    

    }

}
