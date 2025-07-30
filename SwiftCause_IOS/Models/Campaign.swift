import Foundation
import FirebaseFirestore

struct DonationItem: Identifiable, Codable {
    @DocumentID var id: String?

    let collectedAmount: Double
    let coverImageUrl: String?
    let createdBy: String
    let currency: String
    let description: String
    let donationCount: Int
    let endDate: Date
    let giftAidEnabled: Bool
    let goalAmount: Double
    let lastUpdated: Date
    let startDate: Date
    let status: String
    let tags: [String]
    let title: String

    init(id: String? = UUID().uuidString, collectedAmount: Double, coverImageUrl: String? = nil, createdBy: String, currency: String, description: String, donationCount: Int, endDate: Date, giftAidEnabled: Bool, goalAmount: Double, lastUpdated: Date, startDate: Date, status: String, tags: [String], title: String) {
        self.id = id
        self.collectedAmount = collectedAmount
        self.coverImageUrl = coverImageUrl
        self.createdBy = createdBy
        self.currency = currency
        self.description = description
        self.donationCount = donationCount
        self.endDate = endDate
        self.giftAidEnabled = giftAidEnabled
        self.goalAmount = goalAmount
        self.lastUpdated = lastUpdated
        self.startDate = startDate
        self.status = status
        self.tags = tags
        self.title = title
    }
}
