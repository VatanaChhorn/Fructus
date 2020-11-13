//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Vatana Chhorn on 13/11/2020.
//

import SwiftUI

// MARK: - PROPERTIES

var fruit : [Fruit] = fruitData

// MARK: - BODY

struct OnBoardingView: View {
    var body: some View {
        TabView {
            ForEach (fruit[0...5]) {
                item in
                CardView(fruit: item)
            } //: LOOP
        } //: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
