struct CartItem {
    let product: Product
    private(set) var quantity: Int
    
    var subtotal: Double {
        return product.price * Double(quantity)
    }
    
    mutating func updateQuantity(_ newQuantity: Int) {
        guard newQuantity > 0 else {
            print("❌ Error: Quantity must be positive")
            return
        }
        quantity = newQuantity
    }
    
    mutating func increaseQuantity(by amount: Int = 1) {
        guard amount > 0 else {
            print("❌ Error: Amount must be positive")
            return
        }
        quantity += amount
    }
    
    init(product: Product, quantity: Int = 1) {
        self.product = product
        self.quantity = max(quantity, 1)
    }
}

