//
//  CustomListRowView.swift
//  HikeApp
//
//  Created by hiep on 22/06/2024.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK: properties
    
    @State var rowLable: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLable: String? = nil
    @State var rowLinkDestination: String? = nil
    
    
    var body: some View {
        LabeledContent {
            // content
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.primary)
                .fontWeight(.heavy)
            } else if rowLinkLable != nil && rowLinkDestination != nil {
                Link(rowLinkLable!, destination: URL(string: rowLinkDestination!)!)
                    .foregroundColor(.pink)
                    .fontWeight(.heavy)
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        } label: {
            // lable
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                }
                Text(rowLable)
            }
        }
    }
}

#Preview {
    List {
        CustomListRowView(rowLable: "Designer", rowIcon: "paintpalette", rowContent: "John Doe", rowTintColor: .pink)
    }
}
