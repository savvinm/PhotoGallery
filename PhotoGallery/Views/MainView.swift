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
        UITabBar.appearance().standardAppearance = tabBarAppearence
        UITabBar.appearance().barTintColor = .red*/
    }
    
    var body: some View {
        TabView {
            HomeTab
            FavoriteTab
            ProfileTab
        }
        .accentColor(.black)
    }
    
    private func tabIcon<T: View>(title: String, imageName: String, view: T) -> some View {
        view.tabItem {
            VStack {
                Image(uiImage: UIImage(named: imageName)!)
                Text(title)
            }
        }
    }
    
    private var HomeTab: some View {
        tabIcon(title: "Главная", imageName: "mainTab", view: HomeView())
    }
    
    private var FavoriteTab: some View {
        tabIcon(title: "Избранное", imageName: "favoriteTab", view: FavoriteView())
    }
    
    private var ProfileTab: some View {
        tabIcon(title: "Профиль", imageName: "profileTab", view: ProfileView())
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
