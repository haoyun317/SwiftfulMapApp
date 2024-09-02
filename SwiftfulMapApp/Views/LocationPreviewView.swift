//
//  LocationPreviewView.swift
//  SwiftfulMapApp
//
//  Created by  謝皓昀 on 2024/8/28.
//

import SwiftUI

struct LocationPreviewView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0.0) {
            VStack(alignment: .leading, spacing: 16.0) {
                imageSection
            
                titleSection
            }
            VStack(spacing: 8.0) {
                learnMoreButton
                
                nextButton
            }
        }
        .padding(20)
        .background(RoundedRectangle(cornerRadius: 10).fill(.ultraThinMaterial).offset(y: 65))
        .cornerRadius(10)
    }
}

#Preview {
    ZStack {
        Color.yellow.ignoresSafeArea()
        
        LocationPreviewView(location: LocationsDataService.locations.first!)
            .padding()
    }
}

extension LocationPreviewView {
    private var imageSection: some View {
        ZStack {
            if let imageNames = location.imageNames.first {
                Image(imageNames)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            }
        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(location.name)
                .font(.title2)
                .fontWeight(.bold)
            Text(location.cityName)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var learnMoreButton: some View {
        Button(action: {
            vm.sheetLocation = location
        }, label: {
            Text("Learn more")
                .font(.headline)
                .frame(width: 125, height: 35)
        })
        .buttonStyle(BorderedProminentButtonStyle())
    }
    
    private var nextButton: some View {
        Button(action: {
            vm.nextButtonPressed()
        }, label: {
            Text("Next")
                .font(.headline)
                .frame(width: 125, height: 35)
        })
        .buttonStyle(.bordered)
    }
}
