//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Utkarsh Raj on 24/07/24.
//

import SwiftUI

struct ExternalWebLinkView: View {
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - Body
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(destination: URL(string: animal.link)!) {
                        Text(animal.name)
                    }
                }
            }//: HStack
        } //: GroupBox
    }
}

#Preview {
    ExternalWebLinkView(animal: Animal(id: "13", name: "fd", headline: "", description: "", link: "www.espn.com", image: "", gallery: [], fact: ["fdfdfdsjsdklfjdsklfdsfj fhsdfkj afhnes fksbn fhbslifjsadnluilliaj fvlisl fjdslivj sdfihdsf dsoifhbeldskjhfbkdujfhbdskjhfhd fdshflas kjfhsdk","432fsrefdfdsfs","vcwdf"]))
}
