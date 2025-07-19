import SwiftUI

struct CampaignListView: View {
    @StateObject private var viewModel = CampaignListViewModel()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Current Campaigns")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)
                
                ForEach(viewModel.donationItems) { item in
                    DonationItemView(item: item)
                }
            }
            .padding(.bottom, 20)
        }
        .navigationBarTitleDisplayMode(.inline)
        .background(Color.blue)
    }
}

struct DonationItemView: View {
    let item: DonationItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(item.title)
                .font(.headline)
                .foregroundColor(.white)
            
            Text(item.description)
                .font(.subheadline)
                .foregroundColor(.white.opacity(0.8))
                .lineLimit(2)
            
            Spacer()
            
            HStack {
                Text(item.amount)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
                
                NavigationLink(destination: CampaignDetailsView(campaign: item)) {
                    Label("Donate", systemImage: "heart.fill")
                        .font(.body)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color("main"))
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
        .padding(.horizontal)
    }
}

struct CampaignListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CampaignListView()
        }
    }
}
