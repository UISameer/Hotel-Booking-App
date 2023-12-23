import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(0 ... 5, id: \.self) { listing in
                        ListingItemView()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    }
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
