//
//  Location.swift
//  SwiftfulMapApp
//
//  Created by  謝皓昀 on 2024/8/4.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    // Identifiable
    var id: String {
        name + cityName
    }
}
