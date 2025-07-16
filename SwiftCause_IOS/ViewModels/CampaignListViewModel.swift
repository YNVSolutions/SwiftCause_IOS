import Foundation

class CampaignListViewModel: ObservableObject {
    @Published var donationItems: [DonationItem] = CampaignData.donationItems
    
    func donate(to item: DonationItem) {
        print("User wants to donate to: \(item.title) with amount \(item.amount)")
        // Adding additional donation logic here of firebase
    }
}
