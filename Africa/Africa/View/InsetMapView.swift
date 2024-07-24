//
//  InsetMapView.swift
//  Africa
//
//  Created by Utkarsh Raj on 24/07/24.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    
    // MARK: - Properties
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    // MARK: - Body
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(alignment: .topTrailing, content: {
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        Text("Locations")
                            .foregroundStyle(.accent)
                            .bold()
                        
                    } //: HStack
                    .padding(.vertical,10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                }
                .padding(12)
            }
            )
            .frame(height: 256)
            .cornerRadius(12)
    }
}

#Preview {
    InsetMapView()
}
