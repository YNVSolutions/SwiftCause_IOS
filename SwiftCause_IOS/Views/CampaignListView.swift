import SwiftUI

struct CampaignListView: View {
  @StateObject private var vm = CampaignListViewModel()

  var body: some View {
    ScrollView {
      VStack(spacing: 20) {
        Text("current_campaigns")
          .font(.largeTitle)
          .fontWeight(.bold)
          .padding(.bottom, 10)

        ForEach(vm.items) { item in
          DonationRowView(item: item) {
            vm.donate(to: item)
          }
        }
      }
      .padding(.bottom, 20)
    }
    .task {
      await vm.fetchCampaigns()
    }
    .navigationBarTitleDisplayMode(.inline)
  }
}

#Preview {
    CampaignListView()
}
