//
//  ContentView.swift
//  instagram_planner
//
//  Created by Vlad on 30.09.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView(name: "Vlad")
                .padding([.leading, .trailing])
            ScrollView {
                ProfileInfoView()
                    .padding([.leading, .trailing])
                StoriesView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
