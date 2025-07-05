import Foundation
import FirebaseFirestoreCombineSwift
import FirebaseFirestore

struct Campaign: Identifiable, Codable {
    @DocumentID var id: String?;
    let title: String
    let description: String
    let startDate: Date
    let endDate: Date
    let amount: Double
}
