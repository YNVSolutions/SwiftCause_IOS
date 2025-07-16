import Foundation

class CampaignDetailsViewModel: ObservableObject {
    @Published var campaign: DonationItem
    
    init(campaign: DonationItem) {
        self.campaign = campaign
    }
    
    func donate() {
        print("User donated to: \(campaign.title) with amount \(campaign.amount)")
        // Adding donation logic here
    }
}
