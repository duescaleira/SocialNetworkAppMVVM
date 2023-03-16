//
//  ViewController.swift
//  PrimeiroAppMVVM
//
//  Created by Eduardo Escaleira on 16/03/23.
//

import UIKit

class HomeVC: UIViewController {
    
    private var homeScreen: HomeScreen?
    private var ViewModel: HomeViewModel? = HomeViewModel()
    
    override func loadView() {
        homeScreen = HomeScreen()
        view = homeScreen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreen?.configProtocolsCollectionView(delegate: self, datasource: self) // asinando os procotolos
    }
    
}

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return ViewModel?.numberOfItems ?? 0 // // TUDO QUE ENVOLVE LÓGICA NÃO FICA NA VIEW, PORTANTO, TODA LÓGICA SEGUIRÁ NA VIEWMODEL E CONVERSARÁ COM A VIEW
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        ViewModel?.sizeForItem(indexPath: indexPath, frame: collectionView.frame) ?? CGSize()
    }
    
    
}
