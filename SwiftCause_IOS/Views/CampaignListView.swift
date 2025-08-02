import SwiftUI

struct CampaignListView: View {
    @StateObject private var viewModel = CampaignListViewModel()

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HStack {
                    Text("Welcome User")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Button(action: {
                        print("Logout button tapped!")
                    }) {
                        Text("Logout")
                            .font(.body)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 12)
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
                .padding(.horizontal)
                .padding(.top)

                Text("Current Campaigns")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top)

                if viewModel.donationItems.isEmpty {
                    ProgressView("Loading Campaigns...")
                        .foregroundColor(.white)
                        .padding()
                } else {
                    ForEach(viewModel.donationItems) { item in
                        DonationItemView(item: item)
                    }
                }
            }
            .padding(.bottom, 20)
        }
        .background(Color("background").ignoresSafeArea())
        .navigationTitle("Campaigns")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DonationItemView: View {
    let item: DonationItem

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            if let imageUrlString = item.coverImageUrl, let url = URL(string: imageUrlString) {
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(height: 150)
                        .clipped()
                        .cornerRadius(10)
                } placeholder: {
                    ProgressView()
                        .frame(height: 150)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                }
                .padding(.bottom, 5)
            }

            Text(item.title)
                .font(.headline)
                .foregroundColor(.white)

            Text(item.description)
                .font(.subheadline)
                .foregroundColor(.white.opacity(0.8))
                .lineLimit(2)

            Spacer()

            let progress = item.goalAmount > 0 ? item.collectedAmount / item.goalAmount : 0.0
            ProgressView(value: progress)
                .progressViewStyle(LinearProgressViewStyle(tint: Color.green))
                .padding(.vertical, 5)

            HStack {
                Text("\(String(format: "%.0f", item.collectedAmount)) \(item.currency) / \(String(format: "%.0f", item.goalAmount)) \(item.currency)")
                    .font(.caption)
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
