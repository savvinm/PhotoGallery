//
//  ItemPreview.swift
//  PhotoGallery
//
//  Created by Maksim Savvin on 04.09.2022.
//

import SwiftUI

struct ItemPreview: View {
    let title: String
    @State var isFavorite = false
    var body: some View {
        NavigationLink(destination: { Text("test") }) {
            previewBody
        }
        .overlay(alignment: .topTrailing, content: { favoriteButton })
    }
    
    private var previewBody: some View {
        VStack(alignment: .leading) {
            itemImage
            Text(title)
                .font(.system(size: 12))
                .fontWeight(.medium)
                .lineLimit(1)
        }
    }
    
    private var itemImage: some View {
        GeometryReader { geometry in
            Image("catImage")
                .resizable()
                .scaledToFill()
                .frame(width: geometry.size.width, height: geometry.size.height)
                .clipped()
                .cornerRadius(12)
        }
    }
    
    private var favoriteButton: some View {
        Button(action: {
            isFavorite.toggle()
        }, label: {
            Image(isFavorite ? "heart-fill" : "heart")
                .resizable()
                .frame(width: 24, height: 24)
        })
        .frame(width: 24, height: 24)
        .padding(8)
    }
}
