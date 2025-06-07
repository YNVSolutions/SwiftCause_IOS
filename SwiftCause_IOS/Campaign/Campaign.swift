import SwiftUI

struct DonationItem: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let amount: String
}

struct DonationDiv: View {
    let item: DonationItem
    var onDonate: (DonationItem) -> Void

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

                Button(action: {
                    onDonate(item)
                }) {
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


struct Campaign: View {
    let donationItems: [DonationItem] = [
        DonationItem(title: "Education for All",
                     description: "Help provide schooling and learning materials for underprivileged children in rural areas.",
                     amount: "$500"),
        DonationItem(title: "Clean Water Initiative",
                     description: "Fund the construction of new wells and water purification systems in drought-stricken villages.",
                     amount: "$1,200"),
        DonationItem(title: "Medical Aid for Seniors",
                     description: "Support access to essential healthcare, medications, and medical check-ups for elderly citizens.",
                     amount: "$750"),
        DonationItem(title: "Animal Shelter Renovation",
                     description: "Contribute to upgrading facilities and providing better care for rescued animals.",
                     amount: "$300"),
        DonationItem(title: "Community Food Drive",
                     description: "Provide nutritious meals and groceries to families facing food insecurity in urban centers.",
                     amount: "$250")
    ]

    var body: some View {

        ScrollView {
            VStack(spacing: 20) {
                Text("Current Campaigns")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)

                ForEach(donationItems) { item in
                    DonationDiv(item: item) { donatedItem in
                        print("User wants to donate to: \(donatedItem.title) with amount \(donatedItem.amount)")
                    }
                }
            }
            .padding(.bottom, 20)
        }
        .navigationBarTitleDisplayMode(.inline)
        .background(Color.blue)
    }
}


#Preview {
    NavigationStack {
        Campaign()
    }
}
