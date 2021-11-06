//
//  BaseCollectionViewCell.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 02/11/2021.
//

import Foundation
import UIKit

open class BaseCollectionViewCell: UICollectionViewCell {
    
    open func setup(){
        
    }
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
