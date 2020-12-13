import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let imageURL: String
    let price: Double
    let protein: Int
    let calories: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {

    static let sampleAppetizer = Appetizer(
        id: 01,
        name: "Beautiful peace of steak",
        description: "The most yummy and drooling piece of steak you'll ever have",
        imageURL: "steak",
        price: 7.99,
        protein: 299,
        calories: 320,
        carbs: 21
    )
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
