//
//  LocationsDataService.swift
//  VT2NH
//
//  Created by Kevin Edwards on 12/19/24.
//

import Foundation


import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        // Vermont Cities
        Location(
            name: "Burlington",
            cityName: "Burlington",
            coordinates: CLLocationCoordinate2D(latitude: 44.4759, longitude: -73.2121),
            description: "The largest city in Vermont, known for its vibrant culture, Church Street Marketplace, and beautiful Lake Champlain.",
            imageNames: [
                "Burly-1",
                "Church-Street",
                "Lake-Champ"
            ],
            link: "https://en.wikipedia.org/wiki/Burlington,_Vermont"
        ),
        Location(
            name: "Montpelier",
            cityName: "Montpelier",
            coordinates: CLLocationCoordinate2D(latitude: 44.2601, longitude: -72.5754),
            description: "The capital of Vermont, famous for its historic State House and small-town charm.",
            imageNames: [
                "montpelier-1",
                "montpelier-2",
                "montpelier-3"
            ],
            link: "https://en.wikipedia.org/wiki/Montpelier,_Vermont"
        ),
        Location(
            name: "Stowe",
            cityName: "Stowe",
            coordinates: CLLocationCoordinate2D(latitude: 44.4654, longitude: -72.6874),
            description: "A picturesque town known for skiing, outdoor activities, and breathtaking fall foliage.",
            imageNames: [
                "stowe-1",
                "stowe-2",
                "stowe-3"
            ],
            link: "https://en.wikipedia.org/wiki/Stowe,_Vermont"
        ),
        Location(
            name: "Rutland",
            cityName: "Rutland",
            coordinates: CLLocationCoordinate2D(latitude: 43.6106, longitude: -72.9726),
            description: "A historic city in Vermont's Green Mountains, known for its marble industry and charming downtown.",
            imageNames: [
                "rutland-1",
                "rutland-2",
                "rutland-3"
            ],
            link: "https://en.wikipedia.org/wiki/Rutland,_Vermont"
        ),
        Location(
            name: "Brattleboro",
            cityName: "Brattleboro",
            coordinates: CLLocationCoordinate2D(latitude: 42.8509, longitude: -72.5579),
            description: "A creative and eclectic town along the Connecticut River, known for its arts scene and natural beauty.",
            imageNames: [
                "brattleboro-1",
                "brattleboro-2",
                "brattleboro-3"
            ],
            link: "https://en.wikipedia.org/wiki/Brattleboro,_Vermont"
        ),

        // New Hampshire Cities
        Location(
            name: "Manchester",
            cityName: "Manchester",
            coordinates: CLLocationCoordinate2D(latitude: 42.9956, longitude: -71.4548),
            description: "The largest city in New Hampshire, known for its mills, museums, and vibrant downtown.",
            imageNames: [
                "Manchester-1",
            ],
            link: "https://en.wikipedia.org/wiki/Manchester,_New_Hampshire"
        ),
        Location(
            name: "Concord",
            cityName: "Concord",
            coordinates: CLLocationCoordinate2D(latitude: 43.2081, longitude: -71.5376),
            description: "The capital city of New Hampshire, featuring the State House and a rich cultural history.",
            imageNames: [
                "concord-1",
                "concord-2",
                "concord-3"
            ],
            link: "https://en.wikipedia.org/wiki/Concord,_New_Hampshire"
        ),
        Location(
            name: "Portsmouth",
            cityName: "Portsmouth",
            coordinates: CLLocationCoordinate2D(latitude: 43.0718, longitude: -70.7626),
            description: "A historic seaport city with colonial architecture, vibrant markets, and a scenic waterfront.",
            imageNames: [
                "portsmouth-1",
                "portsmouth-2",
                "portsmouth-3"
            ],
            link: "https://en.wikipedia.org/wiki/Portsmouth,_New_Hampshire"
        ),
        Location(
            name: "Nashua",
            cityName: "Nashua",
            coordinates: CLLocationCoordinate2D(latitude: 42.7654, longitude: -71.4676),
            description: "A dynamic city known for its shopping, dining, and scenic parks along the Merrimack River.",
            imageNames: [
                "nashua-1",
                "nashua-2",
                "nashua-3"
            ],
            link: "https://en.wikipedia.org/wiki/Nashua,_New_Hampshire"
        ),
        Location(
            name: "Keene",
            cityName: "Keene",
            coordinates: CLLocationCoordinate2D(latitude: 42.9337, longitude: -72.2782),
            description: "A charming small city known for its annual pumpkin festival and historic downtown.",
            imageNames: [
                "keene-1",
                "keene-2",
                "keene-3"
            ],
            link: "https://en.wikipedia.org/wiki/Keene,_New_Hampshire"
        )
    ]
}

