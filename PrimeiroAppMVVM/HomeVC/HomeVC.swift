//
//  ViewController.swift
//  PrimeiroAppMVVM
//
//  Created by Eduardo Escaleira on 16/03/23.
//

import UIKit

class HomeVC: UIViewController {
    
    private var homeScreen: HomeScreen?
    private var viewModel: HomeViewModel = HomeViewModel()
    
    override func loadView() {
        homeScreen = HomeScreen()
        view = homeScreen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreen?.configProtocolsCollectionView(delegate: self, datasource: self) // asinando os procotolos
        homeScreen?.collectionView.register(PostCardCollectionViewCell.self, forCellWithReuseIdentifier: PostCardCollectionViewCell.identifier)
    }
    
}

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return viewModel.numberOfItems// // TUDO QUE ENVOLVE LÓGICA NÃO FICA NA VIEW, PORTANTO, TODA LÓGICA SEGUIRÁ NA VIEWMODEL E CONVERSARÁ COM A VIEW
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCardCollectionViewCell.identifier, for: indexPath) as? StoryCardCollectionViewCell
            cell?.setupCell(listStory: viewModel.getListStory)
            return cell ?? UICollectionViewCell()
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PostCardCollectionViewCell.identifier, for: indexPath) as? PostCardCollectionViewCell
            cell?.setupCell(listPosts: viewModel.getListPosts)
            return cell ?? UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        viewModel.sizeForItem(indexPath: indexPath, frame: collectionView.frame)
    }
    
    
}
