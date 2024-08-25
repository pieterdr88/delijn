//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Michael Miles on 11/26/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("gatlinburgtn")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(50)
                .padding(.all)
            
            Text("delijn 0.001")
                .font(.largeTitle)
                .foregroundColor(.blue)
            
            Text("In de toekomst zal je kunnen kijken wanneer je bus er is")
                .font(.title)
                .foregroundColor(.blue)
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.teal.opacity(0.3)
                .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
