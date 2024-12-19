// VT2NHApp.swift

import SwiftUI

@main
struct VT2NHApp: App {
    
    @StateObject private var vm = LocationsViewModel() // LocationsViewModel
    @State private var showSplash = true // Track whether to show splash screen or not
    
    var body: some Scene {
        WindowGroup {
            VStack {
                if showSplash {
                    // Show splash screen (ContentView)
                    ContentView() // This is your splash screen
                        .onAppear {
                            // Set a delay to show the splash screen for a few seconds
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                showSplash = false // Transition to LocationsView after the delay
                            }
                        }
                } else {
                    // Show the locations view with the map after the splash screen
                    LocationsView()
                        .environmentObject(vm) // Provide the ViewModel to the LocationsView
                }
            }
        }
    }
}

