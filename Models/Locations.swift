import Foundation
import MapKit

<<<<<<< HEAD
struct Location: Identifiable, Equatable {
    
=======
struct Location: Identifiable {

>>>>>>> 2ddb87d6ca1c66a916f627d8bad5583a7ee08d4e
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
<<<<<<< HEAD
    
    // Identifiable
    var id: String {
        // name = "Colosseum"
        // cityName = "Rome"
        // id = "ColosseumRome"
        name + cityName
    }
    
    // Equatable
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }

}
=======

    
    var id: String {
        // name = "Burliington
        name + cityName
        
    }
}


>>>>>>> 2ddb87d6ca1c66a916f627d8bad5583a7ee08d4e
