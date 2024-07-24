//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Utkarsh Raj on 24/07/24.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - Properties
    let animal: Animal
    
    
    // MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // Hero Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                // Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                // Headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accent)
                    .padding(.horizontal)
                
                // Gallery
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Savana")
                    InsetGalleryView(animal: animal)
                }
                // Facts
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know ?")
                    InsetFactView(animal: animal)
                }
                
                // Description
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                // Map
                Group {
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    InsetMapView()
                }
                .padding(.horizontal)
                
                // Link
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    ExternalWebLinkView(animal: animal)
                }
                .padding(.horizontal)
            }
            .navigationBarTitle("Learn About \(animal.name)", displayMode: .inline)
        }
    }
}

#Preview {
    NavigationStack{
        AnimalDetailView(animal: Animal(id: "fd", name: "Lion", headline: "fdfdfd fd", description: "fdfsdfsdf fds", link: "we", image: "lion", gallery: ["lion","zebra","elephant"], fact: []))
    }
    
}
