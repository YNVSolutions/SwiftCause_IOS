import Foundation
import FirebaseFirestore

class CampaignListViewModel: ObservableObject {
    @Published var donationItems: [DonationItem] = []
    private var db = Firestore.firestore()
    private var listenerRegistration: ListenerRegistration?

    init() {
        fetchCampaigns()
    }

    func fetchCampaigns() {
        listenerRegistration?.remove()

        listenerRegistration = db.collection("campaigns")
            .addSnapshotListener { [weak self] (querySnapshot, error) in
                guard let self = self else { return }

                if let error = error {
                    print("Error getting documents: \(error.localizedDescription)")
                    return
                }

                guard let documents = querySnapshot?.documents else {
                    print("No documents found in 'campaigns' collection.")
                    self.donationItems = []
                    return
                }

                self.donationItems = documents.compactMap { document in
                    do {
                        return try document.data(as: DonationItem.self)
                    } catch {
                        print("Error decoding document into DonationItem (ID: \(document.documentID)): \(error.localizedDescription)")
                        return nil
                    }
                }
            }
    }

    deinit {
        listenerRegistration?.remove()
        print("CampaignListViewModel deinitialized and listener removed.")
    }
}
