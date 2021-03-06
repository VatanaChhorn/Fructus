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
    @AppStorage("isOnboarding") var isOnboarding : Bool = false
    
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
                    
                    GroupBox(label:
                                HStack {
                                    SettingLabelView(labelText: "CUSTOMIZATION", labelImage: "paintbrush")
                                }
                        , content: {
                            Divider().padding(.vertical, 4)
                            Text("If you wish to restart the application, please toggle the toggle bar below and it will automatically reset the application to the boarding screen.")
                                .padding(.vertical, 8)
                                .layoutPriority(1)
                                .frame(minHeight: 60)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            Toggle(isOn: $isOnboarding, label: {
                                
                                if isOnboarding {
                                    Text("Restarted".uppercased())
                                        .fontWeight(.black)
                                        .foregroundColor(.green)
                                } else {
                                    Text("Restart".uppercased())
                                        .fontWeight(.black)
                                        .foregroundColor(.secondary)
                                }
                                
                            })  //: Toggle
                                    .padding()
                                    .background(
                                        Color(UIColor.tertiarySystemGroupedBackground)
                                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                                    )
                        })  //: GrupBox
                    
                    // MARK: - SECTION 3
                    
                    GroupBox(label:
                                HStack {
                                    SettingLabelView(labelText: "Application", labelImage: "apps.iphone")
                                }  //:  End Of HStack
                             )
                            {
                            SettingRowView(name: "Developer", content: "Vatana Chhorn")
                            SettingRowView(name: "Designer", content: "Vatana Chhorn")
                            SettingRowView(name: "Compatability", content: "iOS 14")
                            SettingRowView(name: "Website", linkLabel: "Personal Site", linkDestination: "vatanachhorn.tech")
                            SettingRowView(name: "Instagram", linkLabel: "@vatana.chhorn", linkDestination: "www.instagram.com/vatana.chhorn")
                            SettingRowView(name: "SwiftUI", content: "2.0")
                            SettingRowView(name: "Version", content: "1.0.0")
                    }
                    
                    
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
