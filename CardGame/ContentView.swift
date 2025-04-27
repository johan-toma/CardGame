import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.indigo)
                .ignoresSafeArea()
            
            VStack {
                Image("logo")
                    .padding()
                HStack {
                    Spacer()
                    Image("card13")
                    Spacer()
                    Image("card12")
                    Spacer()
                }

                
                Button(action: {
                    print("button clicked")
                }) {
                    Image("button")
                }
                
               
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
                    Text("0")
                        .font(.title)
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                    Spacer()
                    Text("0")
                        .font(.title)
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                    Spacer()
                }
                
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
