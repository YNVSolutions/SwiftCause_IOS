import Foundation

class CampaignListViewModel: ObservableObject {
    @Published var donationItems: [DonationItem] = CampaignData.donationItems
}
