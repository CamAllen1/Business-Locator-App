//
//  ContentView.swift
//  BlackDVA
//
//  Created by Cameron Allen on 8/4/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var mapController = MapController()
    
    var body: some View {
        NavigationStack {
            MapView(mapController: mapController)
        }
        .searchable(text: $mapController.searchTerm)
        .onSubmit(of: .search) {
            mapController.search()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
