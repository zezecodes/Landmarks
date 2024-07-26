import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable, Hashable, Identifiable{
    var id: Int
    var name: String
    var category: String
    var city: String
    var state: String
    var park: String
    var isFeatured: Bool
    var isFavorite: Bool
    var description: String
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    struct Coordinates: Codable, Hashable{
        var latitude: Double
        var longitude: Double
    }
}
