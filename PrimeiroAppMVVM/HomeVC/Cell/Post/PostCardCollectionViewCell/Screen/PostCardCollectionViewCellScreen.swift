//
//  PostCardCollectionViewCellScreen.swift
//  PrimeiroAppMVVM
//
//  Created by Eduardo Escaleira on 22/03/23.
//

import UIKit

class PostCardCollectionViewCellScreen: UIView {
    
    lazy var collectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false // setar as constraints manualmente
        cv.showsVerticalScrollIndicator = false // tira a barrinha que visualiza no scroll
        cv.register(PostCollectionViewCell.self, forCellWithReuseIdentifier: PostCollectionViewCell.identifier)
        cv.backgroundColor = .clear
        return cv
    }()
    
    public func configProtocolsCollectionView(delegate: UICollectionViewDelegate, datasource: UICollectionViewDataSource) {
        collectionView.delegate = delegate
        collectionView.dataSource = datasource
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(collectionView)
        collectionView.pin(to: self) // TODAS AS CONSTRAINTS DAS LATERAIS SÃO ZERO, CONFORME MÉTODO PIN
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
