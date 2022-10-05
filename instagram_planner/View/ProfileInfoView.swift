//
//  ProfileInfoView.swift
//  instagram_planner
//
//  Created by Vlad on 5.10.22.
//

import SwiftUI

struct ProfileInfoView: View {
    var body: some View {
        VStack {
            HStack {
                Image("profile_image")
                    .resizable()
                    .frame(width: 85, height: 85)
                    .cornerRadius(42.5)
                    .padding(.all, 5)
                    .overlay {
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color.gray.opacity(0.5), lineWidth: 2)
                            
                    }
                    .padding(.all, 2)
                Spacer()
                HStack(spacing: 20) {
                    counterView(count: 54, description: "Posts")
                    counterView(count: 834, description: "Followers")
                    counterView(count: 162, description: "Following")
                }
            }
            VStack(alignment: .leading) {
                HStack {
                    Text("Name")
                        .font(.system(size: 12, weight: .semibold))
                    Spacer()
                    Image(systemName: "applepencil")
                        .resizable()
                        .frame(width: 15, height: 15)
                }
                Text("Digital goodies designer @pixsellz Everything is designed.")
                    .font(.system(size: 12, weight: .regular))
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
    
    @ViewBuilder
    func counterView(count: Int, description: String) -> some View {
        VStack {
            Text("\(count)")
                .font(.system(size: 16, weight: .semibold))
            Text(description)
                .font(.system(size: 13, weight: .regular))
        }
    }
}

struct ProfileInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInfoView().previewLayout(.sizeThatFits)
    }
}
