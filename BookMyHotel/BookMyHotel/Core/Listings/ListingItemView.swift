import SwiftUI

struct ListingItemView: View {
    
    var body: some View {
        VStack(spacing: 8) {
            // Images
            ImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            // Listing details
            HStack(alignment: .top) {
                // Details
                VStack(alignment: .leading) {
                    Text("Bandra, Mumbai")
                        .fontWeight(.semibold)
                        .foregroundStyle(.red)
                    
                    Text("120m away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)

                    HStack(spacing: 4) {
                        Text("INR7000")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.red)
                }
                
                Spacer()
                
                // Ratings
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.0")
                }
                .foregroundStyle(.red)
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
