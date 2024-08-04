//
//  LocationsView.swift
//  SwiftfulMapApp
//
//  Created by  謝皓昀 on 2024/8/4.
//

import SwiftUI

struct LocationsView: View {
   
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) {
                Text($0.name)
            }
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
