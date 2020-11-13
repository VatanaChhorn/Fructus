//
//  CardView.swift
//  Fructus
//
//  Created by Vatana Chhorn on 13/11/2020.
//

import SwiftUI

struct CardView: View {
    
    // MARK: - PROPERTIES
    
    var fruit : Fruit
    
    @State private var isAnimating : Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack (spacing: 20) {
                // FRUIT : IMAGE
                Image(fruit.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .shadow(color: Color.gray.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect( isAnimating ? 1.0 : 0.6 )
                // FRUIT : TITLE
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                // FRUIT : HEADLINE
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // BUTTON : START
                
                StartButton()
                
            } //: Vstack
        } //: Zstack
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                self.isAnimating = true
            }
        }
        .frame(minWidth : 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20.0)
        .padding(.horizontal, 20)
    }
}

// MARK: - PREVIEW

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(fruit: fruitData[1])
            .previewLayout(.fixed(width: 300.0, height: 640.0))
    }
}
