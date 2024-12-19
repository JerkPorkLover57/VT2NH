// LocationsDataService.swift
// Group locations by state

import Foundation
import MapKit

class LocationsDataService {
    
    // Group locations by state
    static let locationsByState: [String: [Location]] = [
        // Vermont Cities
        "Vermont": [
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
            ),Location(name: "Norwich University" , cityName: "Northfield" , coordinates: CLLocationCoordinate2D(latitude: 44.1336, longitude: 72.6548), description: "Americas oldest private military college", imageNames: ["Norwich Univeristy"], link: "https://en.wikipedia.org/wiki/Norwich_University"
            // Add more Vermont cities here
        ),
                       ],
        
        // New Hampshire Cities
        "New Hampshire": [
            Location(
                name: "Manchester",
                cityName: "Manchester",
                coordinates: CLLocationCoordinate2D(latitude: 42.9956, longitude: -71.4548),
                description: "The largest city in New Hampshire, known for its mills, museums, and vibrant downtown.",
                imageNames: [
                    "Manchester"
                ],
                link: "https://en.wikipedia.org/wiki/Manchester,_New_Hampshire"
            ),
            Location(
                name: "Concord",
                cityName: "Concord",
                coordinates: CLLocationCoordinate2D(latitude: 43.2081, longitude: -71.5376),
                description: "The capital city of New Hampshire, featuring the State House and a rich cultural history.",
                imageNames: [
                   "Concord-1",
                   "Concord-2"
                ],
                link: "https://en.wikipedia.org/wiki/Concord,_New_Hampshire"
            ),
            // Add more New Hampshire cities here
        ]
    ]
}

