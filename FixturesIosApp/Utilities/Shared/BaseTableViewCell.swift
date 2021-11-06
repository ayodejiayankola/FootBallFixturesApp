//
//  BaseTableViewCell.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 02/11/2021.
//

import Foundation
import UIKit

open class BaseTableViewCell: UITableViewCell{
    
    open func setup(){
        selectionStyle = .none
    }
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
