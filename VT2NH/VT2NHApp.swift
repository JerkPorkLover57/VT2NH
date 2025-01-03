<<<<<<< HEAD
// VT2NHApp.swift
=======
//  VT2NHApp.swift
//  VT2NH
//
//  Created by Kevin Edwards on 12/19/24.
//
>>>>>>> 2ddb87d6ca1c66a916f627d8bad5583a7ee08d4e

import SwiftUI

@main
struct VT2NHApp: App {
    
<<<<<<< HEAD
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
=======
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            // Wrap both views in a container
            VStack {
                ContentView()
                
                LocationsView()
                    .environmentObject(vm)
>>>>>>> 2ddb87d6ca1c66a916f627d8bad5583a7ee08d4e
            }
        }
    }
}

