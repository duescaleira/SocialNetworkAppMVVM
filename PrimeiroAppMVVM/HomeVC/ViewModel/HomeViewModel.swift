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
    
    private var story = [
    
    Stories(image: "img1", userName: "Add Story"),
    Stories(image: "img2", userName: "Jack"),
    Stories(image: "img3", userName: "Carolina"),
    Stories(image: "img4", userName: "Samuel"),
    Stories(image: "img5", userName: "Ariana"),
    Stories(image: "img6", userName: "Puggy Inho"),
    Stories(image: "img7", userName: "Eddy")
    
    ]
    
    public var getListStory: [Stories] {
        story
    }
    
    private var posts = [
    
    Posts(profileImage: "img2", userName: "Jack", postImage: "post1"),
    Posts(profileImage: "img4", userName: "Samuel", postImage: "post2"),
    Posts(profileImage: "img3", userName: "Carolina", postImage: "post3"),
    Posts(profileImage: "img6", userName: "Puggy_101", postImage: "post4"),
          
    ]
    
    public var getListPosts: [Posts] {
        posts
    }
    
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
