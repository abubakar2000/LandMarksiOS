//
//  ContentView.swift
//  Landmark App
//
//  Created by Abubakar Mughal on 15/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(width: .infinity, height: 300, alignment: .center)
            CircularImage()
                .offset( y: -130)
                .padding(.bottom,-130)
            VStack(alignment: .leading, spacing: 5.0) {
                Text("Turtle Rock")
                .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                Divider()
                    .padding(.top,5)
                    .padding(.bottom,5)
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here")
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
