//
//  CoverImageView.swift
//  Africa
//
//  Created by Utkarsh Raj on 24/07/24.
//

import SwiftUI

struct CoverImageView: View {
    
    // MARK: - Properties
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

// MARK: - Preview
#Preview {
    CoverImageView()
}
