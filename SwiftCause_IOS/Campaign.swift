import SwiftUI

struct DonationCampaign: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let amountNeeded: String
}


let sampleCampaigns = [
    DonationCampaign(title: "Help Earthquake Victims", description: "Providing shelter and food to earthquake-affected families in Nepal.", amountNeeded: "$5,000"),
    DonationCampaign(title: "Education for All", description: "Funding school supplies for underprivileged children.", amountNeeded: "$2,000"),
    DonationCampaign(title: "Medical Aid for Refugees", description: "Supporting emergency medical kits and medicines.", amountNeeded: "$3,500"),
    DonationCampaign(title: "Clean Water Project", description: "Building wells in remote villages in Africa.", amountNeeded: "$4,200")
]


struct CampaignsView: View {
    var body: some View {
        NavigationView {
            List(sampleCampaigns) { campaign in
                VStack(alignment: .leading, spacing: 8) {
                    Text(campaign.title)
                        .font(.headline)
                    Text(campaign.description)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Text("Goal: \(campaign.amountNeeded)")
                        .font(.subheadline)
                        .bold()
                    Button(action: {
                        print("Donate tapped for \(campaign.title)")
                    }) {
                        Text("Donate")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
                .padding(.vertical)
            }
            .navigationTitle("Donation Campaigns")
        }
    }
}


struct CampaignsView_Previews: PreviewProvider {
    static var previews: some View {
        CampaignsView()
    }
}

