import SwiftUI
import FirebaseAuth
import Firebase

struct Login: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn: Bool = false
    @State private var showAlert: Bool = false
    @State private var alertMessage: String = ""
    @State private var isLoading: Bool = false

    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            Color("main")
                .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("Sign In")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 20)

                HStack {
                    Image(systemName: "envelope")
                        .foregroundColor(.gray)
                    TextField("Email Address", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .foregroundColor(.black)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal)

                HStack {
                    Image(systemName: "lock")
                        .foregroundColor(.gray)
                    SecureField("Password", text: $password)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .foregroundColor(.black)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal)

                Button(action: {
                    signInUser()
                }) {
                    if isLoading {
                        ProgressView()
                            .progressViewStyle(CircularProgressViewStyle(tint: .white))
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .font(.headline)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    } else {
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
                .disabled(isLoading)

                Button(action: {
                    print("Navigate to Registration")
                }) {
                    Text("Don't have an account? Sign Up")
                        .foregroundColor(.white.opacity(0.8))
                        .font(.subheadline)
                }
                .padding(.top, 10)
            }
        }
        .alert("Login Error", isPresented: $showAlert) {
            Button("OK", role: .cancel) { }
        } message: {
            Text(alertMessage)
        }
        .fullScreenCover(isPresented: $isLoggedIn) {
            NavigationView {
                CampaignListView()
            }
        }
    }

    func signInUser() {
        guard !email.isEmpty, !password.isEmpty else {
            alertMessage = "Please enter both email and password."
            showAlert = true
            return
        }

        isLoading = true

        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            isLoading = false

            if let error = error {
                self.alertMessage = error.localizedDescription
                self.showAlert = true
                print("Firebase Auth Error: \(error.localizedDescription)")
            } else {
                self.isLoggedIn = true
                print("User logged in successfully! UID: \(result?.user.uid ?? "N/A")")
                self.email = ""
                self.password = ""
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
