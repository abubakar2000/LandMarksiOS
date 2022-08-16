//
//  CredoImage.swift
//  Landmark App
//
//  Created by Abubakar Mughal on 15/08/2022.
//

import SwiftUI

extension Image{
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
            .padding()
    }
    
    func backgroundModifier() -> some View {
        self
            .imageModifier()
            .background(.gray)
    }
}

struct CredoImage: View {
    
    private var imageUrl:String = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
//        AsyncImage(url:URL(string: imageUrl))
        
//        AsyncImage(url: URL(string: imageUrl),scale: 2.0)
        
//        AsyncImage(url: URL(string: imageUrl),scale: 3.0){
//            image in image
//        } placeholder: {
//            Image("photo.circle.fill")
//                .backgroundModifier()
//        }
        
//        AsyncImage(url: URL(string: imageUrl)) {
//            phase in
//            if let image = phase.image {
//                image.imageModifier()
//            } else if phase.error != nil {
//                Image(systemName: "ant.circle.fill")
//                    .backgroundModifier()
//            } else {
//                Image(systemName: "photo.circle.fill")
//                    .backgroundModifier()
//            }
//        }
        
        AsyncImage(url: URL(string: imageUrl) ,transaction: Transaction(animation:
                .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) {
            phase in
                switch phase {
                case .success(let image):
                    image.imageModifier()
//                        .transition(.move(edge: .bottom))
                        .transition(.scale)
                case .failure(_):
                    Image(systemName: "ant.circle.fill")
                        .backgroundModifier()
                case .empty:
                    Image(systemName: "photo.circle.fill")
                                    
                @unknown default:
                    ProgressView()
                }
        }
    }
}

struct CredoImage_Previews: PreviewProvider {
    static var previews: some View {
        CredoImage()
    }
}
