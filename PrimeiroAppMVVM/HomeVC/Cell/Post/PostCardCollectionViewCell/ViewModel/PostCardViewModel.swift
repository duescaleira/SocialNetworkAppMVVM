//
//  PostCardViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Eduardo Escaleira on 22/03/23.
//

import UIKit

class PostCardViewModel: NSObject {
    
    private var listPosts: [Posts]
    
    init(listPosts: [Posts]) {
        self.listPosts = listPosts
    }
    
    public var numberOfItens: Int {
        listPosts.count
    }
    
    public func loadCurrentStory(indexPath: IndexPath) -> Posts {
        listPosts[indexPath.row]
    }

}
