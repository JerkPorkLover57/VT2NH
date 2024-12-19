//
//  Event.swift
//  VT2NH
//
//  Created by Kevin Edwards on 12/19/24.
//



import Foundation

struct EventResponse: Codable {
    var events: [Event]
}

struct Event: Identifiable, Codable {
    var id: String
    var name: Name
    var start: StartDate
    var location: EventLocation
}

struct Name: Codable {
    var text: String
}

struct StartDate: Codable {
    var local: String
}

struct EventLocation: Codable {
    var address: String
}
