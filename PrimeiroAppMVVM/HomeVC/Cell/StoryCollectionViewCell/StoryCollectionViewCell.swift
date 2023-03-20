//
//  StoryCollectionViewCell.swift
//  PrimeiroAppMVVM
//
//  Created by Eduardo Escaleira on 20/03/23.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "StoryCollectionViewCell"
//    private var screen: StoryCardCollectionViewCellScreen = StoryCardCollectionViewCellScreen()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        configScreen()
//        screen.configProtocolsCollectionView(delegate: self, datasource: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
