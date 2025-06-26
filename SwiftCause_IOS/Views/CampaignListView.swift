import SwiftUI

struct CampaignListView: View {
    @StateObject var campaignViewModel = CampaignListViewModel()

    var body: some View {
        NavigationView {
            List {
                if campaignViewModel.campaigns.isEmpty {
                    Text("No campaigns found!")
                        .foregroundColor(.gray)
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
