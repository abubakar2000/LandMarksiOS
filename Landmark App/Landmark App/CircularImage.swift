//
//  CircularImage.swift
//  Landmark App
//
//  Created by Abubakar Mughal on 15/08/2022.
//

import SwiftUI

struct CircularImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay{
                Circle()
                    .stroke(lineWidth: 4)
                    .foregroundColor(.white)
            }
            .shadow(radius: 7)
    }
}

struct CircularImage_Previews: PreviewProvider {
    static var previews: some View {
        CircularImage()
    }
}
