//
//  SwiftfulMapAppApp.swift
//  SwiftfulMapApp
//
//  Created by  謝皓昀 on 2024/8/4.
//

import SwiftUI

@main
struct SwiftfulMapAppApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm )
        }
    }
}
