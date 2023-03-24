//
//  StoryCardViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Eduardo Escaleira on 16/03/23.
//

import UIKit

class StoryCardViewModel {
    
    private var listStory: [Stories]
    
    init(listStory: [Stories]) {
        self.listStory = listStory
    }
    
    public var numberOfItens: Int {
        listStory.count
    }
    
    public func loadCurrentStory(indexPath: IndexPath) -> Stories {
        listStory[indexPath.row]
    }
    

}
