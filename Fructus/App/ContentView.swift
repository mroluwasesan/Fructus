//
//  ContentView.swift
//  Fructus
//
//  Created by Negatron on 17/04/2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruits : [Fruit] = fruitsData
    // MARK: - BODY
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                        
                }
            }
            .navigationTitle("Fruit")
        }//:  NAVIGATION
        
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
