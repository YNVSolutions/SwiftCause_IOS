import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                    Color("main")
                        .ignoresSafeArea()
                ScrollView{
                    Main()
                }
            }
        }
        .navigationTitle("Swift Cause")
    }
}

//page1
struct Main: View {
    var body: some View {
        VStack(spacing: 20) {
            VStack{
                Text("welcome_message")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
                    .bold()
                HStack{
                    Image("img")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 200)
                }
                
                HStack{
                    Text("Reliable")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .padding()
                        .border(Color.white,width:2)
                    Text("Trustable")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .padding()
                        .border(Color.white,width:2)
                    Text("Helpfull")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .padding()
                        .border(Color.white,width:2)
                }
                .padding(.vertical,40)
                NavigationLink(destination: Login()) {
                    Text("login_button")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                }
            }
            .padding(.vertical,150)
            Features()
        }
        .padding(.vertical,40)
        .frame(maxWidth: .infinity)
    }
}

//page2
struct Features: View {
    var body: some View {
        VStack {
            Text("Features")
                .foregroundColor(.white)
                .font(.system(size: 40))
                .bold()
            HStack{
                Image("Camp_setup")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                
                Image("Flex_Donation_mode")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            }
            HStack{
                Image("Real_Time_Funds")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                
                Image("Real_Time_Funds")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                
            }
            HStack{
                Image("Camp_setup")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                
                Image("Flex_Donation_mode")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            }
            
        }
    }
}

#Preview {
    ContentView()
}
