//
//  EventListView.swift
//  VT2NH
//
//  Created by Kevin Edwards on 12/19/24.
//


import SwiftUI

struct EventListView: View {
    @StateObject private var eventFetcher = EventFetcher()
    @StateObject private var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            if eventFetcher.isLoading {
                ProgressView("Loading events...")
            } else {
                List(eventFetcher.events, id: \.id) { event in
                    VStack(alignment: .leading) {
                        Text(event.name.text)
                            .font(.headline)
                        Text(event.start.local)
                            .font(.subheadline)
                        Text(event.location.address)
                            .font(.body)
                            .foregroundColor(.gray)
                    }
                    .padding(.vertical)
                }
            }
        }
        .onAppear {
            // Only fetch events when location is available
            if let location = locationManager.userLocation {
                Task {
                    await eventFetcher.fetchEvents(latitude: location.latitude, longitude: location.longitude)
                }
            }
        }
        .onChange(of: locationManager.userLocation) { newLocation in
            if let location = newLocation {
                Task {
                    await eventFetcher.fetchEvents(latitude: location.latitude, longitude: location.longitude)
                }
            }
        }
    }
}
