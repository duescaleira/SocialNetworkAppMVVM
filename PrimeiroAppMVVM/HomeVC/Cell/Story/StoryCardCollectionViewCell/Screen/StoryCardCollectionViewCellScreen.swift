//
//  StoryCardCollectionViewCellScreen.swift
//  PrimeiroAppMVVM
//
//  Created by Eduardo Escaleira on 16/03/23.
//

import UIKit

class StoryCardCollectionViewCellScreen: UIView {
    
    private lazy var cardView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 15
        view.setCardShadow()
        return view
    }()
    
    lazy var collectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false // setar as constraints manualmente
        cv.showsVerticalScrollIndicator = false // tira a barrinha que visualiza no scroll
        cv.register(StoryCollectionViewCell.self, forCellWithReuseIdentifier: StoryCollectionViewCell.identifier)
        cv.backgroundColor = .clear
        cv.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
        return cv
    }()
    
    // MARK: - ASSINAR OS PROTOCOLOS
    public func configProtocolsCollectionView(delegate: UICollectionViewDelegate, datasource: UICollectionViewDataSource) {
        collectionView.delegate = delegate
        collectionView.dataSource = datasource
    }
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
        collectionView.pin(to: cardView) // setando as constraints zeradas pela cardView
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(cardView)
        cardView.addSubview(collectionView)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            cardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            cardView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            cardView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 15),
            cardView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -15),
        
        ])
    }
    
}
