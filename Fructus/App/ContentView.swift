//
//  ContentView.swift
//  Fructus
//
//  Created by Vatana Chhorn on 13/11/2020.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    var fruits : [Fruit] = fruitData
    @State private var isShowingSetting : Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailsView(fruits: item)) {
                        FruitRowView(fruits: item)
                            .padding(.vertical, 4)
                }
                }
            }  //: List
            .navigationTitle("Fruits")
                .navigationBarItems(trailing:
                                        Button(action: {
                                            isShowingSetting = true
                                        }) {
                                            Image(systemName: "slider.horizontal.3")
                                        }
                )  //:  Nav Bar Item
                .sheet(isPresented: $isShowingSetting, content: {
                    SettingSheet()
                })
    }                 //: NavigationView
}

    // MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
            .previewDevice("iphone 11")
    }
}
} 
