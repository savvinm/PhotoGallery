//
//  MainView.swift
//  PhotoGallery
//
//  Created by Maksim Savvin on 03.09.2022.
//

import SwiftUI

struct MainView: View {
    
    init() {
        /*let tabBarAppearence = UITabBarAppearance()
        let itemAppearence = UITabBarItemAppearance()
        tabBarAppearence.backgroundColor = .red
        itemAppearence.normal.iconColor = .lightGray
        itemAppearence.selected.iconColor = .black
        tabBarAppearence.compactInlineLayoutAppearance = itemAppearence
        UITabBar.appearance().standardAppearance = tabBarAppearence*/
        UITabBar.appearance().barTintColor = .red
    }
    
    var body: some View {
        TabView {
            HomeTab
            FavoriteTab
            ProfileTab
        }
        .accentColor(.black)
    }
    
    private var HomeTab: some View {
        HomeView().tabItem {
            VStack {
                Image(uiImage: UIImage(named: "mainTab")!)
                Text("Главная")
            }
        }
    }
    
    private var FavoriteTab: some View {
        HomeView().tabItem {
            VStack {
                Image(uiImage: UIImage(named: "favoriteTab")!)
                Text("Избранное")
            }
        }
    }
    
    private var ProfileTab: some View {
        HomeView().tabItem {
            VStack {
                Image(uiImage: UIImage(named: "profileTab")!)
                Text("Профиль")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
