//
//  RecipeTabView.swift
//  Challenger MVVM Prt 2
//
//  Created by Juan on 30/05/23.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView {
            RecipeFeaturedVIew()
                .tabItem {
                    VStack {
                        Image(systemName:  "star.fill")
                        Text("Featured")
                    }
                }
            
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
        .environmentObject(RecipeModel())
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
