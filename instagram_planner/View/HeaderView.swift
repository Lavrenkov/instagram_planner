//
//  HeaderView.swift
//  instagram_planner
//
//  Created by Vlad on 5.10.22.
//

import SwiftUI

struct HeaderView: View {
    
    private var name: String
    
    init(name: String) {
        self.name = name
    }
    
    var body: some View {
        HStack {
            Text(name)
                .font(.system(size: 16, weight: .semibold))
                
            Spacer()
            HStack(spacing: 20) {
                Button {
                    debugPrint("add item")
                } label: {
                    Image(systemName: "plus")
                }
                
                Button {
                    debugPrint("menu")
                } label: {
                    Image(systemName: "list.dash")
                }
            }
            .foregroundColor(.black)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(
            name: "Vlad"
        ).previewLayout(.sizeThatFits)
    }
}
