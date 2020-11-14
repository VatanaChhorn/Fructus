//
//  FruitRowView.swift
//  Fructus
//
//  Created by Vatana Chhorn on 14/11/2020.
//

import SwiftUI

struct FruitRowView: View {
    
    // MARK: - PROPERTIES
    
    var fruits : Fruit
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Image(fruits.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruits.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8.0)
            
            VStack (alignment: .leading, spacing: 5) {
                Text(fruits.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruits.headline)
                    .font(.caption2)
                    .foregroundColor(.secondary)
            } //: VStack 
            
        } //: Hstack
    }
}

    // MARK: - PREVIEW

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruits: fruitData[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
