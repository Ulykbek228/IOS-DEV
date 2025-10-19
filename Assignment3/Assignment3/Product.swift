import Foundation

struct Product {
    let id: String
    let name: String
    let price: Double
    let category: Category
    let description: String
    
    enum Category: String, CaseIterable {
        case electronics = "Electronics"
        case clothing = "Clothing"
        case food = "Food"
        case books = "Books"
    }
    
    var displayPrice: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = "USD"
        return formatter.string(from: NSNumber(value: price)) ?? "$\(price)"
    }
    
    init?(id: String = UUID().uuidString, name: String, price: Double, category: Category, description: String = "") {
        guard price > 0 else {
            print("❌ Error: Price must be positive")
            return nil
        }
        
        guard !name.isEmpty else {
            print("❌ Error: Product name cannot be empty")
            return nil
        }
        
        self.id = id
        self.name = name
        self.price = price
        self.category = category
        self.description = description
    }
}
