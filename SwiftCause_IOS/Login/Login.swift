import SwiftUI
import FirebaseAuth
import Firebase
struct Login: View {
    @State private var Email: String = ""
    @State private var Password: String = ""
    @State private var isLoggedIn: Bool = false
    @State private var showAlert: Bool = false
    @State private var alertMessage: String = ""
    
    var body: some View {
        ZStack {
            Color("main")
                .ignoresSafeArea()
            VStack(spacing: 20) {
                Text("Sign In")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
                
                HStack {
                    Image(systemName: "envelope")
                        .foregroundColor(.gray)
                    TextField("Email Address", text: $Email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal)
                
                HStack {
                    Image(systemName: "lock")
                        .foregroundColor(.gray)
                    SecureField("Password", text: $Password)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal)
                
                Button(action: {
                    signInUser()
                }) {
                    Text("Login")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .font(.headline)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
            }
            
        }
    }
    
    func signInUser() {
        Auth.auth().signIn(withEmail: Email, password: Password){
            result, error in
            if error != nil{
                print(error!.localizedDescription)
            }
        }
        
    }
}

#Preview {
    Login()
}
