//
//  MainView.swift
//  Africa
//
//  Created by Utkarsh Raj on 24/07/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
             ContentView()
                .tabItem { 
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            VideoListView()
               .tabItem {
                   Image(systemName: "play.rectangle")
                   Text("Watch")
               }
            MapView()
               .tabItem {
                   Image(systemName: "map")
                   Text("Locations")
               }
            GalleryView()
               .tabItem {
                   Image(systemName: "photo")
                   Text("Gallery")
               }
        } //: Tab
    }
}

#Preview {
    MainView()
}
