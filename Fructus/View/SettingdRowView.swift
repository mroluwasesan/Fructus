//
//  SettingdRowView.swift
//  Fructus
//
//  Created by Negatron on 20/04/2023.
//

import SwiftUI

struct SettingdRowView: View {
    
    //MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkeDestination: String? = nil
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack{
                Text(name).foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if(linkLabel != nil && linkeDestination != nil){
                    Link(linkLabel!,destination: URL(string: "https://\(linkeDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else {
                    EmptyView()
                }
            }
        }
    }
}

//MARK: - PREVIEW
struct SettingdRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingdRowView(name: "Developer", content: "Rotimi oluwasean")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
