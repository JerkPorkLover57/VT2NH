//
//  EventView.swift
//  VT2NH
//
//  Created by Kevin Edwards on 12/19/24.
//

import SwiftUI

struct EventView: View {
    var body: some View {
        NavigationView{
            EventListView()
                .navigationTitle("Nearby Events")
        }
    }
}

#Preview {
    EventView()
}
