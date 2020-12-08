import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
            Image(appetizer.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 90)
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("\(appetizer.price, specifier: "%.2f")€")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading, 8)
        }
    }
}

struct AppetizerListCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListCell(appetizer: MockData.sampleAppetizer)
    }
}
