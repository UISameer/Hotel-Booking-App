import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "image-1",
        "image-2",
        "image-3",
        "image-4"
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            // Images
            TabView {
                ForEach(images, id: \.self) { image in
                        Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            // Listing details
            HStack(alignment: .top) {
                // Details
                VStack(alignment: .leading) {
                    Text("Bandra, Mumbai")
                        .fontWeight(.semibold)
                    
                    Text("120m away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)

                    HStack(spacing: 4) {
                        Text("INR7000")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                
                Spacer()
                
                // Ratings
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.0")
                }
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
