//
//  SettingRowView.swift
//  Fructus
//
//  Created by Vatana Chhorn on 19/11/2020.
//

import SwiftUI

struct SettingRowView: View {
    
    // MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel : String? = nil
    var linkDestination : String? = nil
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkDestination != nil && linkLabel != nil) {
                    Link(linkLabel!, destination:  URL(string: "Https://\(linkDestination!)")! )
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
                
              
            }
        }  //: End of HStack
    }
}

    // MARK: - PREVIEW

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingRowView(name: "Developer", content: "Vatana Chhorn")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingRowView(name: "Website", linkLabel: "Personal Website", linkDestination: "www.vatanachhorn.tech")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
