import SwiftUI

struct CampaignListView: View {
    @StateObject var campaignViewModel = CampaignListViewModel()

    var body: some View {
        NavigationView {
            List {
                if campaignViewModel.campaigns.isEmpty {
                    Text("No campaigns found!")
                        .foregroundColor(.gray)
                } else {
                    ForEach(campaignViewModel.campaigns) { campaign in
                        NavigationLink(destination: CampaignDetailsView(campaign: campaign)) {
                            VStack(alignment: .leading) {
                                Text(campaign.title)
                                    .font(.headline)
                                Text(campaign.description)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                    .lineLimit(1)
                                Text("Starts: \(campaign.startDate, formatter: itemFormatter)")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Campaigns")
        }
    }

    private var itemFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CampaignListView()
    }
}
