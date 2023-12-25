import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            VStack {
                SearchAndFilterBar()
                ScrollView {
                    LazyVStack(spacing: 32) {
                        ForEach(0 ... 5, id: \.self) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                            }
                        }
                    }
                }
                .navigationDestination(for: Int.self) { listing in
                    Text("Listing deail View")
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
