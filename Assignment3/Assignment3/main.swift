import Foundation

// Тестовые сценарии из задания
func runTests() {
    print("=== 🧪 TESTING SHOPPING CART SYSTEM ===\n")
    
    // 1. Create sample products
    print("1. Creating sample products...")
    let laptop = Product(name: "MacBook Pro", price: 1999.99, category: .electronics)!
    let book = Product(name: "Swift Programming", price: 39.99, category: .books)!
    let headphones = Product(name: "AirPods", price: 179.99, category: .electronics)!
    
    // 2. Test adding items to cart
    print("\n2. Testing cart operations...")
    let cart = ShoppingCart()
    cart.addItem(product: laptop, quantity: 1)
    cart.addItem(product: book, quantity: 2)
    
    // 3. Test adding same product twice
    print("\n3. Testing quantity updates...")
    cart.addItem(product: laptop, quantity: 1)
    
    // 4. Test cart calculations
    print("\n4. Testing calculations...")
    print("   Subtotal: $\(cart.subtotal)")
    print("   Item count: \(cart.itemCount)")
    
    // 5. Test discount code
    print("\n5. Testing discounts...")
    cart.discountCode = "SAVE10"
    print("   Total with discount: $\(cart.total)")
    
    // 6. Test removing items
    print("\n6. Testing item removal...")
    cart.removeItem(productId: book.id)
    print("   Items after removal: \(cart.items.count)")
    
    // 7. Demonstrate REFERENCE TYPE behavior
    print("\n7. Demonstrating REFERENCE semantics...")
    let originalCartItems = cart.items.count
    modifyCart(cart)
    print("   Original cart was modified: \(cart.items.count > originalCartItems)")
    
    // 8. Demonstrate VALUE TYPE behavior
    print("\n8. Demonstrating VALUE semantics...")
    let item1 = CartItem(product: laptop, quantity: 1)
    var item2 = item1
    item2.updateQuantity(5)
    print("   Original item unchanged: \(item1.quantity == 1)")
    
    // 9. Create order from cart
    print("\n9. Creating order...")
    let address = Address(street: "123 Main St", city: "Almaty", zipCode: "050000", country: "Kazakhstan")
    let order = Order(from: cart, shippingAddress: address)
    
    // 10. Modify cart after order creation
    print("\n10. Testing order immutability...")
    cart.clearCart()
    print("   Order preserved items: \(order.itemCount)")
    print("   Cart is empty: \(cart.isEmpty)")
}

func modifyCart(_ cart: ShoppingCart) {
    let headphones = Product(name: "AirPods", price: 179.99, category: .electronics)!
    cart.addItem(product: headphones, quantity: 1)
}

// Запуск тестов
runTests()
print("\n=== ✅ ALL TESTS COMPLETED ===")
