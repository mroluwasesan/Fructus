//
//  StartButtonView.swift
//  Fructus
//
//  Created by Negatron on 18/04/2023.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    // MARK: - BODY
    
    var body: some View {
    
        HStack (spacing: 8){
            
            Button(action: {
                isOnboarding = false
            }) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//: Button
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25))
        }// HSTACK
        .accentColor(.white)
        
    }
}

// MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
