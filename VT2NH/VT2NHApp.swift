//  VT2NHApp.swift
//  VT2NH
//
//  Created by Kevin Edwards on 12/19/24.
//

import SwiftUI

@main
struct VT2NHApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            // Wrap both views in a container
            VStack {
                ContentView()
                
                LocationsView()
                    .environmentObject(vm)
            }
        }
    }
}

