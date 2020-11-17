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
                    
                    // MARK: - SECTION 1
                    
                    GroupBox(label:
                                HStack {
                                   SettingLabelView(labelText: "FRUITUS", labelImage: "info.circle")
                                }  //:  HStack
                             , content: {
                                Divider().padding(.vertical, 4)
                                HStack (alignment: .center, spacing: 10) {
                                   Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(9.0)
                                    
                                    Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesteral. Fruits are source of many essential nutrients.")
                                        .font(.footnote)
                                    
                                }  //: Hstack
                             })
                    
                    // MARK: - SECTION 2
                    
                    // MARK: - SECTION 3
                    
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
