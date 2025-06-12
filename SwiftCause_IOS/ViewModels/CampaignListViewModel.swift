import Foundation
import FirebaseFirestore
import Combine

class CampaignListViewModel: ObservableObject {
    @Published var campaigns = [Campaign]()
    private var db = Firestore.firestore()
    private var listenerRegistration: ListenerRegistration?
    
    init() {
        fetchCampaigns()
    }
    
    func fetchCampaigns() {
        // --- KEY CHANGE HERE: "campaigns" collection ---
        listenerRegistration = db.collection("campaigns").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents in 'campaigns' collection or error: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            
            self.campaigns = documents.compactMap { queryDocumentSnapshot in
                do {
                    return try queryDocumentSnapshot.data(as: Campaign.self)
                } catch {
                    print("Error decoding campaign: \(error.localizedDescription)")
                    return nil
                }
            }
        }
    }
    
    deinit {
        listenerRegistration?.remove()
        print("CampaignViewModel deinitialized and listener removed.")
    }
    
    
}
