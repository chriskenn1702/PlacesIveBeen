//
//  ContentView.swift
//  PlacesIveBeen
//
//  Created by Christopher Kennedy on 3/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var places = ["Rome", "Venice", "Florence", "Punta Cana", "Tahoe", "Vail", "Aruba", "Salt Lake City", "Bahamas", "Grand Cayman", "Pisa"]
    var body: some View {
        NavigationStack {
            List {
                ForEach(places, id: \.self) { place in
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(.blue)
                        Text(place)
                    }
                }
            }
            .font(.title2)
            .listStyle(.plain)
            .navigationTitle("Places I've Been:")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
