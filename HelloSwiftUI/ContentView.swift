
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
                }.frame(height: 2800)
                
                
                Text(delijn)
                    .foregroundColor(.blue)

                NavigationLink(destination:SecondView(),label:{
                    Text("Open scherm 2")
                    .font(.largeTitle)
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

Task {
	var delijn = try await fetchInfo()
}


func fetchInfo() async throws -> String {
	let url = URL(string: "https://www.delijn.be/api/networktrips/stops/201074/?type=MERGEFLEX")!
	let (data, _) = try await URLSession.shared.data(from: url)
	let response = try JSONDecoder().decode(Response.self, from: data)
	return response.results
}
