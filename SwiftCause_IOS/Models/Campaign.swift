import Foundation

struct DonationItem: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let amount: String
}

class CampaignData {
    static let donationItems: [DonationItem] = [
        DonationItem(title: "Education for All",
                    description: "Help provide schooling and learning materials for underprivileged children in rural areas.",
                    amount: "$500"),
        DonationItem(title: "Clean Water Initiative",
                    description: "Fund the construction of new wells and water purification systems in drought-stricken villages.",
                    amount: "$1,200"),
        DonationItem(title: "Medical Aid for Seniors",
                    description: "Support access to essential healthcare, medications, and medical check-ups for elderly citizens.",
                    amount: "$750"),
        DonationItem(title: "Animal Shelter Renovation",
                    description: "Contribute to upgrading facilities and providing better care for rescued animals.",
                    amount: "$300"),
        DonationItem(title: "Community Food Drive",
                    description: "Provide nutritious meals and groceries to families facing food insecurity in urban centers.",
                    amount: "$250")
    ]
}
