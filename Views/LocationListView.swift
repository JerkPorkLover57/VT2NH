<<<<<<< HEAD
=======
//
//  LocationsListView.swift
//  SwiftfulMap
//
//  Created by Kevin Edwards on 12/17/24.
//
>>>>>>> 2ddb87d6ca1c66a916f627d8bad5583a7ee08d4e

import SwiftUI

struct LocationsListView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) { location in
                Button {
                    vm.showNextLocation(location: location)
                } label: {
                    listRowView(location: location)
                }
                .padding(.vertical, 4)
                .listRowBackground(Color.clear)
            }
        }
        .listStyle(PlainListStyle())
    }
}

<<<<<<< HEAD
struct LocationsListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsListView()
            .environmentObject(LocationsViewModel())
    }
}

extension LocationsListView {
    
=======
extension LocationsListView {
    /// A helper function to create a row view for a location
>>>>>>> 2ddb87d6ca1c66a916f627d8bad5583a7ee08d4e
    private func listRowView(location: Location) -> some View {
        HStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
<<<<<<< HEAD
                    .frame(width: 45, height: 45)
                    .cornerRadius(10)
            }
            
=======
                    .frame(width: 45, height: 45) // Adjust size for better display
                    .cornerRadius(10)
            }
>>>>>>> 2ddb87d6ca1c66a916f627d8bad5583a7ee08d4e
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.headline)
                Text(location.cityName)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
<<<<<<< HEAD
    
}
=======
}

struct LocationsListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsListView()
            .environmentObject(LocationsViewModel()) // Correct spelling for environmentObject
    }
}


>>>>>>> 2ddb87d6ca1c66a916f627d8bad5583a7ee08d4e
