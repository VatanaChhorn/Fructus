//
//  SettingSheet.swift
//  Fructus
//
//  Created by Vatana Chhorn on 16/11/2020.
//

import SwiftUI

struct SettingSheet: View {
    
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView() {
            ScrollView(.vertical, showsIndicators: false) {
                VStack (spacing: 20){
                    Text("Hello")
                    
                }  //: Vstack
                .navigationBarTitle(Text("Setting"), displayMode:  .large)
                .navigationBarItems(trailing:
                                        Button ( action: {
                                            presentationMode.wrappedValue.dismiss()
                                        }) {
                                            Image(systemName: "xmark")
                                        }
                )
                .padding()
            }  //: ScrollView
        }  //: Nav View
    }
}

// MARK: - PREVIEW

struct SettingSheet_Previews: PreviewProvider {
    static var previews: some View {
        SettingSheet()
            .preferredColorScheme(.dark)
    }
}
