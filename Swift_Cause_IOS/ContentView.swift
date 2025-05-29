import SwiftUI
import FirebaseAuth
import Firebase
struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        ZStack {
            Color.black
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundStyle(.linearGradient(colors: [
                    Color(red: 0.0, green: 0.0, blue: 0.5), .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
            
            VStack(spacing: 20){
                Text("Swift Cause")
                    .foregroundColor(.white)
                    .font(.system(size: 40,weight: .bold,design: .rounded))
                    .offset(x:-50,y:-50)
                TextField("Email", text: $email)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty){
                        Text("Email")
                            .foregroundColor(.white)
                            .bold()
                            .font(.title2)
                    }
                Rectangle()
                    .frame(width: 350 , height: 1)
                    .foregroundColor(.white)
                    .padding(.bottom)
                
                SecureField("Password",text:$password)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: password.isEmpty){
                        Text("Password")
                            .foregroundColor(.white)
                            .bold()
                            .font(.title2)
                    }
                Rectangle()
                    .frame(width: 350 , height: 1)
                    .foregroundColor(.white)
                
                
}

#Preview {
    ContentView()
}


extension View{
    func placeholder<Content: View>(
        when shouldShow : Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder:()->Content)->some View{
            ZStack(alignment:alignment){
                placeholder().opacity(shouldShow ? 1:0)
                self
            }
        }
}
