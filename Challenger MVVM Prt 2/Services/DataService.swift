//
//  DataService.swift
//  Challenger MVVM Prt 2
//
//  Created by Juan on 30/05/23.
//

import Foundation


class DataService {
    
    static func getLocalData() -> [Recipe] {
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let path = pathString {
            let url = URL(fileURLWithPath: path)
            
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
                    let recipeData = try decoder.decode([Recipe].self, from: data)
                    
                    for r in recipeData {
                        r.id = UUID()
                        
                        for i in r.ingredients {
                            i.id = UUID()
                        }
                    }
                    
                    return recipeData
                } catch {
                    print("Decoding error: \(error)")
                }
                
            } catch {
                print("Data error: \(error)")
            }
        }
        
        return [Recipe]()
    }
}

