//
//  HomeView.swift
//  PhotoGallery
//
//  Created by Maksim Savvin on 03.09.2022.
//

import SwiftUI

struct HomeView: View {
    let numbers = [0, 1, 2, 3, 4, 5]
    
    init() {
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                itemsTable
            }
            /*.padding(EdgeInsets(top: -10, leading: -25, bottom: -10, trailing: -25))
            .refreshable {
            
            }*/
            .navigationTitle("Главная")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button(action: {}, label: {
                    Image(systemName: "magnifyingglass")
                })
            }
        }
    }
    
    private var itemsTable: some View {
        LazyVGrid(columns: [GridItem(), GridItem()], alignment: .center, spacing: 20) {
            ForEach(numbers, id: \.self) { id in
                ItemPreview(title: "Test link")
                    .frame(width: UIScreen.main.bounds.width * 0.448, height: UIScreen.main.bounds.width * 0.656)
            }
        }
        .padding()
        .padding(.top)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
