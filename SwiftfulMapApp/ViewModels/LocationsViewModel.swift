//
//  LocationsViewModel.swift
//  SwiftfulMapApp
//
//  Created by  謝皓昀 on 2024/8/4.
//

import Foundation

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location]
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
} 
