//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Negatron on 19/04/2023.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    let nutrients: [String] = ["Energy","Suger", "Fat", "Protain", "Vitamins", "Minerals"]
    
    // MARK: - BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer()
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
                
            }
        }//: GROUPBOX
    }
}



// MARK: - PREVIEW

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 489))
    }
}
