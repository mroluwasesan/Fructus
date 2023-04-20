//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Negatron on 20/04/2023.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - PREVIEW
    var labelText: String
    var labelImage: String
    //MARK: - Body
    var body: some View {
        HStack{
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}
//MARK: - PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
