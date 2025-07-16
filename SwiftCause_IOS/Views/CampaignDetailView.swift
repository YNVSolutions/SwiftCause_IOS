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
                // Campaign Header
                VStack(alignment: .leading, spacing: 10) {
                    Text(viewModel.campaign.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text(viewModel.campaign.amount)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white.opacity(0.9))
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color("main"))
                .cornerRadius(15)
                .padding(.horizontal)
                .padding(.top)
                
                // Campaign Description
                VStack(alignment: .leading, spacing: 10) {
                    Text("About this campaign")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text(viewModel.campaign.description)
                        .font(.body)
                        .foregroundColor(.white.opacity(0.8))
                        .lineSpacing(5)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color("main").opacity(0.8))
                .cornerRadius(15)
                .padding(.horizontal)
                
                Spacer()
                
                // Action Buttons
                HStack(spacing: 20) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Main Menu")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        viewModel.donate()
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
        .background(Color.blue)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
    }
}
