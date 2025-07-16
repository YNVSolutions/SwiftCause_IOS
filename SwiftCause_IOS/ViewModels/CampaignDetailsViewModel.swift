import Foundation

class CampaignDetailsViewModel: ObservableObject {
    @Published var campaign: DonationItem
    
    init(campaign: DonationItem) {
        self.campaign = campaign
    }
}
