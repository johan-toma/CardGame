import SwiftUI



struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card8"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Color(.indigo)
                .ignoresSafeArea()
            
            VStack {
                Image("logo")
                    .padding()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                .padding(.vertical)


                HStack {
                    Spacer()
                    Text("Player")
                        .font(.headline)
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Spacer()
                    Text("CPU")
                        .font(.headline)
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                .padding()
                
                HStack {
                    Spacer()
                    Text(String(playerScore))
                        .font(.title)
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                    Spacer()
                    Text(String(cpuScore))
                        .font(.title)
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                    Spacer()
                }
                
                
            }
            
        }
    }
    
    
    func deal() {
        var playerValue = Int.random(in: 2...14)
        var cpuValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerValue)
        cpuCard = "card" + String(cpuValue)
        
        if playerValue > cpuValue {
            playerScore = playerScore + 1
        }
        else if cpuValue > playerValue {
            cpuScore = cpuScore + 1
        }
        else {
            cpuScore = cpuScore + 1
            playerScore = playerScore + 1
        }
        
        
        
    }
}

#Preview {
    ContentView()
}
