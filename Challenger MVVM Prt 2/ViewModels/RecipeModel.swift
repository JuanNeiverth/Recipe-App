//
//  RecipeModel.swift
//  Challenger MVVM Prt 2
//
//  Created by Juan on 17/05/23.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
        
        
    }
}
