import SwiftUI

struct CampaignDetailsView: View {
    @StateObject var viewModel: CampaignDetailsViewModel
    @Environment(\.presentationMode) var presentationMode

    init(campaign: DonationItem) {
        _viewModel = StateObject(wrappedValue: CampaignDetailsViewModel(campaign: campaign))
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                if let imageUrlString = viewModel.campaign.coverImageUrl, let url = URL(string: imageUrlString) {
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity, maxHeight: 250)
                            .cornerRadius(15)
                    } placeholder: {
                        ProgressView()
                            .frame(maxWidth: .infinity, minHeight: 150)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(15)
                    }
                    .padding(.horizontal)
                } else {
                    Image(systemName: "photo.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, maxHeight: 200)
                        .foregroundColor(.gray)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(15)
                        .padding(.horizontal)
                }

                VStack(alignment: .leading, spacing: 10) {
                    Text(viewModel.campaign.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)

                    Text("Goal: \(String(format: "%.0f", viewModel.campaign.goalAmount)) \(viewModel.campaign.currency)")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white.opacity(0.9))

                    Text("Collected: \(String(format: "%.0f", viewModel.campaign.collectedAmount)) \(viewModel.campaign.currency)")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(.white.opacity(0.8))
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color("main"))
                .cornerRadius(15)
                .padding(.horizontal)
                .padding(.top)

                VStack(alignment: .leading, spacing: 10) {
                    Text("About this campaign")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)

                    Text(viewModel.campaign.description)
                        .font(.body)
                        .foregroundColor(.white.opacity(0.8))
                        .lineSpacing(5)

                    Text("Donations Count: \(viewModel.campaign.donationCount)")
                        .font(.callout)
                        .foregroundColor(.white.opacity(0.7))
                        .padding(.top, 5)

                    Text("Status: \(viewModel.campaign.status.capitalized)")
                        .font(.callout)
                        .foregroundColor(.white.opacity(0.7))

                    Text("Tags: \(viewModel.campaign.tags.joined(separator: ", "))")
                        .font(.callout)
                        .foregroundColor(.white.opacity(0.7))
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color("main").opacity(0.8))
                .cornerRadius(15)
                .padding(.horizontal)

                Spacer()

                HStack(spacing: 20) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Campaigns")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }

                    Button(action: {
                        print("Donate now to \(viewModel.campaign.title)")
                    }) {
                        Text("Donate Now")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
                .padding(.bottom)
            }
        }
        .background(Color.blue.ignoresSafeArea())
        .navigationTitle(viewModel.campaign.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CampaignDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CampaignDetailsView(campaign: DonationItem(
                id: "sample_id",
                collectedAmount: 15000,
                coverImageUrl: "https://images.pexels.com/photos/6646918/pexels-photo-6646918.jpeg",
                createdBy: "preview_user",
                currency: "GBP",
                description: "This is a sample campaign description for preview purposes, demonstrating how the new fields will appear.",
                donationCount: 50,
                endDate: Date().addingTimeInterval(3600 * 24 * 30),
                giftAidEnabled: true,
                goalAmount: 25000,
                lastUpdated: Date(),
                startDate: Date(),
                status: "active",
                tags: ["education", "children"],
                title: "Sample Campaign for Previews"
            ))
        }
    }
}
