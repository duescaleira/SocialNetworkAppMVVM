//
//  HomeScreen.swift
//  PrimeiroAppMVVM
//
//  Created by Eduardo Escaleira on 16/03/23.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var collectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false // setar as constraints manualmente
        cv.showsHorizontalScrollIndicator = false // tira a barrinha que visualiza no scroll
        // TO DO: REGISTER
        cv.backgroundColor = .clear
        return cv
    }()
    
    public func configProtocolsCollectionView(delegate: UICollectionViewDelegate, datasource: UICollectionViewDataSource) {
        collectionView.delegate = delegate
        collectionView.dataSource = datasource
        
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        configConstraints()
        backgroundColor = .appBAckGround
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(collectionView)
    }
    
    private func configConstraints() {
        collectionView.pin(to: self)
    }
    
}
