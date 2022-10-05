//
//  StoriesView.swift
//  instagram_planner
//
//  Created by Vlad on 5.10.22.
//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 18) {
                addStoryView()
                storyView(imageName: "", description: "Friends")
                storyView(imageName: "", description: "Sport")
            }
            .padding(.leading)
        }
    }
    
    @ViewBuilder
    func storyView(imageName: String, description: String) -> some View {
        VStack {
            Image("profile_image")
                .resizable()
                .frame(width: 55, height: 55)
                .cornerRadius(27.5)
                .padding(.all, 5)
                .overlay {
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 2)
                        
                }
                .padding(.all, 2)
            
            Text(description)
                .font(.system(size: 12, weight: .regular))
        }
    }
    
    @ViewBuilder
    func addStoryView() -> some View {
        VStack {
            ZStack {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 16, height: 16)
            }
            .frame(width: 55, height: 55)
            .cornerRadius(27.5)
            .padding(.all, 5)
            .overlay {
                RoundedRectangle(cornerRadius: 50)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 2)
                    
            }
            .padding(.all, 2)
            
            Text("New")
                .font(.system(size: 12, weight: .regular))
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView()
    }
}
