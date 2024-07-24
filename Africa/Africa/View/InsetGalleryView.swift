//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Utkarsh Raj on 24/07/24.
//

import SwiftUI

struct InsetGalleryView: View {
    
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }
        }
    }
}

#Preview {
    InsetGalleryView(animal: Animal(id: "fd", name: "Lion", headline: "thid is al fdo fdn ", description: "fdfd ", link: "wss", image: "zebra", gallery: ["lion", "zebra", "elephant"], fact: []))
}
