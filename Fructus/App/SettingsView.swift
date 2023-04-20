//
//  SettingsView.swift
//  Fructus
//
//  Created by Negatron on 20/04/2023.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: _ BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    //MARK: - SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical,4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitermin, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    //MARK: - SECTION 2
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider()
                        Text("If you like you can restart the application by toggling the switch in this box. That way it start the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minWidth: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous))
                        )
                    }
                    
                    
                    
                    //MARK: - SECTION 3
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        
                        SettingdRowView(name: "Developer",content: "Rotimi Oluwasesan")
                        SettingdRowView(name: "Designer", content: "Oladipupo Oluwasesan")
                        SettingdRowView(name: "Compatibility",content: "IOS 14")
                        SettingdRowView(name: "Github", linkLabel: "Rotimi Oluwasesan", linkeDestination: "github.com/mroluwasesan")
                        
                        SettingdRowView(name: "Twitter", linkLabel: "@MrOluwasesan", linkeDestination: "twitter.com/MrOluwasesan")
                        SettingdRowView(name: "SwiftUI", content: "2.0")
                        SettingdRowView(name: "Version", content: "1.1.0")
                        
                    }
                    
                }//:VSTACK
                .navigationTitle("Settings")
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }){
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }//: SCROLL
        }//: NAVIGATIO
    }
    
    
    // MARK: - PREVIEW
    
    struct SettingsView_Previews: PreviewProvider {
        static var previews: some View {
            SettingsView()
        }
    }
}
