//
//  HomeViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Eduardo Escaleira on 16/03/23.
//

import UIKit

// MARK: - RESPONSABILIDADE É CRIAR TODA A PARTE LÓGICA.
// NUMBEROFITENS DEVE FICAR AQUI DENTRO E CONVERSAR COM A VIEW POSTERIORMENTE

class HomeViewModel {
    
    public var numberOfItems: Int {
        2
    }
    
    public func sizeForItem(indexPath: IndexPath, frame: CGRect) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: 120, height: frame.height) // Primeira célula, largura de 120 e altura da própria collectionView
        } else {
            return CGSize(width: frame.width - 120, height: frame.height)
        }
    }
}
