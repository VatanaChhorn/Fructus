//
//  FruitDetailsView.swift
//  Fructus
//
//  Created by Vatana Chhorn on 14/11/2020.
//

import SwiftUI

struct FruitDetailsView: View {
    
    
    // MARK: - PROPERTIES
    
    var fruits : Fruit
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack (alignment: .center, spacing: 20) {
                   //Header
                    HeaderView(fruits: fruits)
                    
                    VStack (alignment: .leading, spacing: 20) {
                        //Title
                        Text(fruits.title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(fruits.gradientColors[1])
                        //Headline
                        Text(fruits.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        
                        FruitNutrientsView(fruits: fruits)
                        
                        //SUBTHEADLINE
                        Text("learn more about \(fruits.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruits.gradientColors[1])
                        
                        //DESCRIPTIONS
                        
                        Text(fruits.description)
                            .multilineTextAlignment(.leading)
                            
                        //LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    } //: Vstack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: Vstack
                .navigationBarTitle(fruits.title, displayMode: .inline
                )
                .navigationBarHidden(true)
            } //: ScrollView
            .edgesIgnoringSafeArea(.all)
        } //: Nav View
    }
}

    // MARK: - PREVIEW
struct FruitDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsView(fruits: fruitData[1])
    }
}
