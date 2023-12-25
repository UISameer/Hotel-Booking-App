import SwiftUI

struct ImageCarouselView: View {
    
    var images = [
        "image-1",
        "image-2",
        "image-3",
        "image-4",
        "image-5",
        "image-6",
        "image-7",
        "image-8",
        "image-9",
        "image-10",
        "image-11",
        "image-12",
    ]
    
    var body: some View {
        TabView {
            ForEach(images.shuffled(), id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ImageCarouselView()
}
