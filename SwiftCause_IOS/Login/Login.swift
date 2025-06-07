import SwiftUI
import FirebaseAuth

struct Login: View {
    @State private var Email: String = ""
    @State private var Password: String = ""
    @State private var isLoggedIn: Bool = false
    
    var body: some View {
        NavigationStack {
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
                    
                    
                    NavigationLink(destination: Campaign(), isActive: $isLoggedIn) { EmptyView() }
                    
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
    }
    
    //Sign-in
    private func signInUser() {
        Auth.auth().signIn(withEmail: Email, password: Password) { authResult, error in
            if let error = error {
                print("Error signing in: \(error.localizedDescription)")
            } else {
                print("User signed in successfully!")
                isLoggedIn = true
            }
        }
    }
}

#Preview {
    Login()
}
