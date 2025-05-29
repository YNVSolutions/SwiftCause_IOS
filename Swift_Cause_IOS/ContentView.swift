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
                
                Button{
                    //sign up
                    register()
                    
                }label: {
                    Text("Sign Up")
                        .frame(width: 200,height: 40)
                        .bold()
                        .foregroundColor(.white)
                        .background(
                            RoundedRectangle(cornerRadius: 10,style: .continuous)
                                .fill(.linearGradient(colors: [
                                    .green, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                                )
                        )
                }
                .padding(.top)
                .offset(y:100)
                
                Button{
                    //login
                    login()
                }label: {
                    Text("Already have an account? Login")
                        .bold()
                        .foregroundColor(.white)
                }
                .padding(.top)
                .offset(y:110)
            }
            .frame(width: 350)
        }
        .ignoresSafeArea()
    }
    
    func login(){
        Auth.auth().createUser(withEmail: email, password: password){
            result, error in
            if error != nil{
                print(error!.localizedDescription)
            }
        }
    }
    
    func register(){
        Auth.auth().createUser(withEmail: email, password: password){
            result, error in
            if error != nil{
                print(error!.localizedDescription)
            }
        }
    }
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
