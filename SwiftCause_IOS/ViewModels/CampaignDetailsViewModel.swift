import Foundation
import FirebaseFirestore

class CampaignDetailsViewModel: ObservableObject {
    @Published var campaign: DonationItem
    private var db = Firestore.firestore()
    private var listenerRegistration: ListenerRegistration?

    init(campaign: DonationItem) {
        self.campaign = campaign
        fetchCampaignDetails(campaignId: campaign.id)
    }

    func fetchCampaignDetails(campaignId: String?) {
        guard let id = campaignId else {
            print("Campaign ID is nil, cannot fetch details.")
            return
        }

        listenerRegistration?.remove()

        listenerRegistration = db.collection("campaigns").document(id)
            .addSnapshotListener { [weak self] (documentSnapshot, error) in
                guard let self = self else { return }

                if let error = error {
                    print("Error fetching campaign details for ID \(id): \(error.localizedDescription)")
                    return
                }

                guard let document = documentSnapshot, document.exists else {
                    print("Document with ID \(id) does not exist or nil.")
                    return
                }

                do {
                    self.campaign = try document.data(as: DonationItem.self)
                } catch {
                    print("Error decoding campaign details for ID \(id): \(error.localizedDescription)")
                }
            }
    }

    deinit {
        listenerRegistration?.remove()
        print("CampaignDetailsViewModel deinitialized and listener removed.")
    }
}
