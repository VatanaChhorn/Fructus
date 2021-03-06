//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Vatana Chhorn on 15/11/2020.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    // MARK: - PROPERTIES
    
    var fruits: Fruit
    let nutrients : [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK: - BODY
    
    var body: some View {
        
        GroupBox() {
            DisclosureGroup ("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }  //:  Group
                        .foregroundColor(fruits.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruits.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }  //:  HStack
                }
            }  //: DisclosureGroup
        }  //: GroupBox

    }
}
    
    // MARK: - PREVIEW

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruits: fruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
