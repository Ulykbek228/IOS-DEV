import Foundation
struct Address {
    let street: String
    let city: String
    let zipCode: String
    let country: String
    
    var formattedAddress: String {
        return """
        \(street)
        \(city), \(zipCode)
        \(country)
        """
    }
    
    init(street: String, city: String, zipCode: String, country: String) {
        self.street = street
        self.city = city
        self.zipCode = zipCode
        self.country = country
    }
}
