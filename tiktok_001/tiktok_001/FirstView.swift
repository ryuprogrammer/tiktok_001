//
//  TabView.swift
//  tiktok_001
//
//  Created by トム・クルーズ on 2023/09/23.
//

import SwiftUI

struct FirstView: View {
    @State var select = 1
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "person.2")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "bell")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "envelope.badge")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
