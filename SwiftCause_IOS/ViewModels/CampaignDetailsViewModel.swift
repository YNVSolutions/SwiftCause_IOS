import Foundation
import Combine

class CampaignDetailsViewModel: ObservableObject {
    let campaign: Campaign

    init(campaign: Campaign) {
        self.campaign = campaign
    }
}
