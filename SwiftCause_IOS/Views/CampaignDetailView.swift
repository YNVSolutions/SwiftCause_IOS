import SwiftUI

struct CampaignDetailsView: View {
    @StateObject var viewModel: CampaignDetailsViewModel

    private var itemFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                Text(viewModel.campaign.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 5)

                Text(viewModel.campaign.description)
                    .font(.body)
                    .foregroundColor(.primary)
                    .padding(.bottom, 10)

                HStack {
                    Image(systemName: "calendar")
                        .foregroundColor(.gray)
                    Text("Starts: \(viewModel.campaign.startDate, formatter: itemFormatter)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.bottom, 5)
            }
            .padding()
            .navigationTitle(viewModel.campaign.title)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CampaignDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CampaignDetailsView(viewModel: CampaignDetailsViewModel(campaign: Campaign(id: nil, title: "Preview Title", description: "This is a generic description for the preview.", startDate: Date())))
        }
    }
}
