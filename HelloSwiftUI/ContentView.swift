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
            
            Text("First Line")
                .font(.largeTitle)
                .foregroundColor(.blue)
            
            Text("Second Line")
                .font(.title)
                .foregroundColor(.red)
            
            HStack(alignment: .center) {
                Text("Left Side")
                Text("Right Side")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
