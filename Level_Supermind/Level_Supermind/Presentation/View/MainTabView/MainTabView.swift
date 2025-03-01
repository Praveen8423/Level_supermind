//
//  MainTabView.swift
//  Level_Supermind
//
//  Created by Praveen Sehgal on 28/02/2025.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0
    
    init() {
        UITabBar.appearance().tintColor = UIColor.white  // Selected tab color
//        UITabBar.appearance().unselectedItemTintColor = UIColor.gray  // Unselected tab color
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeScreenView()
                .tabItem {
                    Label("Today", image: "homeIcon")
                        .font(.custom("SFProText-Medium", size: 11))
                        .foregroundColor(Color.white)
                }
                .tag(0)
            HomeScreenView()
                .tabItem {
                    Label("Explore", image: "Search")
                        .font(.custom("SFProText-Medium", size: 11))
                        .foregroundColor(Color.black)
                }
                .tag(1)
            ProfileScreenView()
                .tabItem {
                    Label("You", image: "User")
                        .font(.custom("SFProText-Medium", size: 11))
                        .foregroundColor(Color.black)
                }
                .tag(2)
        }
        .accentColor(Color.white)
        .toolbarColorScheme(.dark, for: .tabBar)
        .background(Colors.BackgroundColor)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MainTabView()
}
