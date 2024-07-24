//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Utkarsh Raj on 24/07/24.
//

import SwiftUI

struct AnimalListItemView: View {
    
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - Body
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name.capitalized)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.accent)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing,8)
            }
        }
    }
}

#Preview {
    
    AnimalListItemView(animal: Animal(id: "1", name: "lion", headline: "fdfsfdf fdsljflds fjodi9r3  f0in ffjh oaf ah", description: "fdoj fds jh i am ano t at all ahappy with the wish tou he dashbader", link: "www.xyz.com", image: "lion", gallery: [], fact: []))
}
