//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ethan Silvas on 7/29/22.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly: Bool = true
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            !showFavoritesOnly || landmark.isFavorite
        }
    }
    
    var body: some View {
        NavigationView {
            List(filteredLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
            LandmarkList()
    }
}
