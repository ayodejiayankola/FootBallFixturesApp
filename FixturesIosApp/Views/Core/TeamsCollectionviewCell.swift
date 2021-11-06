//
//  Tab3CollectionViewCell.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 04/11/2021.
//

import UIKit

class TeamsCollectionviewCell: UICollectionViewCell {
    static let identifier = "Tab3CollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .white
        stackView.frame = CGRect(x: 5, y:0, width: contentView.frame.size.width - 10, height: contentView.frame.size.height)
        stackView.addSubview(teamLogo)
        stackView.addSubview(teamName)
        contentView.addSubview(stackView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    let stackView : UIStackView = {
        let stackView = UIStackView(frame: CGRect(x:0,y:0,width:100,height:100));
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillProportionally
        stackView.layer.borderWidth = 1.0
        stackView.layer.borderColor = UIColor.lightGray.cgColor
        stackView.layer.shadowColor = UIColor.lightGray.cgColor
        stackView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        stackView.layer.shadowRadius = 20.0
        stackView.layer.shadowOpacity = 0.2
        return stackView
    }()
    
    
    lazy var teamLogo: UIImageView = {
        let contentView = UIImageView()
        contentView.image = UIImage(named: "arrow-left-thin")
        contentView.contentMode = .scaleAspectFit
        contentView.clipsToBounds  = true
       return contentView
     }()
    lazy var teamName: UILabel = {
        let contentView = UILabel()
        contentView.textAlignment = .center
        contentView.numberOfLines = 3
       return contentView
     }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        teamLogo.frame = CGRect(x: 5, y:0, width: contentView.frame.size.width - 10, height: contentView.frame.size.height - 50)
        teamName.frame = CGRect(x: 5, y:contentView.frame.size.height  - 50, width: contentView.frame.size.width - 10, height:50)
        
    }
    
    public func configureLogo(uiImage : String,uiLabel : String){
        teamLogo.image = UIImage(named: uiImage)
        teamName.text = uiLabel
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        teamLogo.image = nil
        teamName.text = nil
    }
    
}
