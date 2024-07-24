//
//  InsetFactView.swift
//  Africa
//
//  Created by Utkarsh Raj on 24/07/24.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - Body
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                        
                }
            }
            .tabViewStyle(.page)
            .frame(minHeight: 148,idealHeight: 168, maxHeight: 180)
        }
    }
}

#Preview {
    InsetFactView(animal: Animal(id: "13", name: "fd", headline: "", description: "", link: "", image: "", gallery: [], fact: ["fdfdfdsjsdklfjdsklfdsfj fhsdfkj afhnes fksbn fhbslifjsadnluilliaj fvlisl fjdslivj sdfihdsf dsoifhbeldskjhfbkdujfhbdskjhfhd fdshflas kjfhsdk","432fsrefdfdsfs","vcwdf"]))
}
