import StripePaymentSheet
import SwiftUI

class CheckoutViewModel: ObservableObject {
    let backendCheckoutUrl = URL(string: "http://192.168.1.100:5000/payment-sheet")!

    @Published var paymentSheet: PaymentSheet?
    @Published var paymentResult: PaymentSheetResult?
    
    func preparePaymentSheet() {
        var request = URLRequest(url: backendCheckoutUrl)
        request.httpMethod = "POST"

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error fetching PaymentSheet data: \(error)")
                return
            }

            guard let data = data,
                  let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
                  let customerId = json["customer"] as? String,
                  let ephemeralKey = json["ephemeralKey"] as? String,
                  let clientSecret = json["paymentIntent"] as? String,
                  let publishableKey = json["publishableKey"] as? String else {
                print("Invalid response from server")
                return
            }

            DispatchQueue.main.async {
                STPAPIClient.shared.publishableKey = publishableKey
                var configuration = PaymentSheet.Configuration()
                configuration.merchantDisplayName = "My Shop"
                configuration.customer = .init(id: customerId, ephemeralKeySecret: ephemeralKey)

                self.paymentSheet = PaymentSheet(paymentIntentClientSecret: clientSecret, configuration: configuration)
            }
        }.resume()
    }

    func presentPaymentSheet(from viewController: UIViewController) {
        paymentSheet?.present(from: viewController) { result in
            DispatchQueue.main.async {
                self.paymentResult = result
            }
        }
    }
}
