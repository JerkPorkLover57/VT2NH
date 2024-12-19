//
//  EventFetcher.swift
//  VT2NH
//
//  Created by Kevin Edwards on 12/19/24.
//

import Foundation
import Combine

class EventFetcher: ObservableObject {
    @Published var events: [Event] = []
    @Published var isLoading = false
    
    private let apiKey = "H2IK7KCWCRFGXK7MJON4" // Eventbrite API Key
    
    func fetchEvents(latitude: Double, longitude: Double) async {
        isLoading = true
        let url = URL(string: "https://www.eventbriteapi.com/v3/events/search/?location.latitude=\(latitude)&location.longitude=\(longitude)&token=\(apiKey)")!
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")
        
        do {
            let (data, _) = try await URLSession.shared.data(for: request)
            let response = try JSONDecoder().decode(EventResponse.self, from: data)
            DispatchQueue.main.async {
                self.events = response.events
                self.isLoading = false
            }
        } catch {
            print("Error fetching events: \(error)")
            DispatchQueue.main.async {
                self.isLoading = false
            }
        }
    }
}
