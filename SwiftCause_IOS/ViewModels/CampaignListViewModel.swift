import Foundation
import SwiftUI

@MainActor
class CampaignListViewModel: ObservableObject {
  @Published var items: [DonationItem] = []

  func fetchCampaigns() async {
    try? await Task.sleep(nanoseconds: 1_000_000_000)
    self.items = [
        DonationItem(id: UUID(), title: "School Supplies", description: "Help kids learn!", amount: "$50"),
        DonationItem(id: UUID(), title: "Clean Water Project", description: "Providing clean water to villages.", amount: "$100"),
        DonationItem(id: UUID(), title: "Community Garden", description: "Support local food production.", amount: "$25")
    ]
  }

  func donate(to item: DonationItem) {
    print("Donating to: \(item.title) with amount: \(item.amount)")
  }
}
