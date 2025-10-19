import Foundation
class User {
    let userId: String
    let name: String
    let email: String
    private(set) var orderHistory: [Order] = []
    
    var totalSpent: Double {
        return orderHistory.reduce(0) { $0 + $1.total }
    }
    
    init(name: String, email: String) {
        self.userId = UUID().uuidString
        self.name = name
        self.email = email
    }
    
    func placeOrder(_ order: Order) {
        orderHistory.append(order)
    }
}
