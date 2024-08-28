
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
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
                Form{
                    ForEach(1..<50) { i in
                        Text("test \(i)")
                        } 
                    }
                
                Text("dit is een tekst")
                    .background(Color.green)

                NavigationLink(destination:SecondView(),label:{
                    Text("Open scherm 2")
                })

                }
                .navigationTitle("welkom")
            }
        }
            
    }
}


struct SecondView: View {
    var body: some View {
        Text("dit is scherm 2")
        .navigationTitle("scherm 2")
    }
}
