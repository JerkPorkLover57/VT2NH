<<<<<<< HEAD


=======
>>>>>>> 2ddb87d6ca1c66a916f627d8bad5583a7ee08d4e
import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
<<<<<<< HEAD
    
    // All loaded locations
    @Published var locations: [Location]
    
    // Current location on map
    @Published var mapLocation: Location {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    
    // Current region on map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
=======
    @Published var locations: [Location]
    @Published var mapLocation: Location {
        didSet {
            updateMapCameraPosition(location: mapLocation)
        }
    }
    
    @Published var mapCameraPosition: MapCameraPosition
>>>>>>> 2ddb87d6ca1c66a916f627d8bad5583a7ee08d4e
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    // Show list of locations
    @Published var showLocationsList: Bool = false
    
<<<<<<< HEAD
    // Show location detail via sheet
    @Published var sheetLocation: Location? = nil
    
=======
>>>>>>> 2ddb87d6ca1c66a916f627d8bad5583a7ee08d4e
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        
<<<<<<< HEAD
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan)
        }
    }
    
    func toggleLocationsList() {
        withAnimation(.easeInOut) {
//            showLocationsList = !showLocationsList
=======
        self.mapCameraPosition = .region(
            MKCoordinateRegion(
                center: locations.first!.coordinates,
                span: mapSpan
            )
        )
    }
    
    private func updateMapCameraPosition(location: Location) {
        withAnimation(.easeInOut) {
            mapCameraPosition = .region(
                MKCoordinateRegion(
                    center: location.coordinates,
                    span: mapSpan
                )
            )
        }
    }
    
    func toggleLocationList() {
        withAnimation(.easeInOut) {
>>>>>>> 2ddb87d6ca1c66a916f627d8bad5583a7ee08d4e
            showLocationsList.toggle()
        }
    }
    
    func showNextLocation(location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
            showLocationsList = false
        }
    }
<<<<<<< HEAD
    
    func nextButtonPressed() {
        // Get the current index
        guard let currentIndex = locations.firstIndex(where: { $0 == mapLocation }) else {
            print("Could not find current index in locations array! Should never happen.")
            return
        }
        
        // Check if the currentIndex is valid
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            // Next index is NOT valid
            // Restart from 0
            guard let firstLocation = locations.first else { return }
            showNextLocation(location: firstLocation)
            return
        }
        
        // Next index IS valid
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
    
}
=======
}


>>>>>>> 2ddb87d6ca1c66a916f627d8bad5583a7ee08d4e
