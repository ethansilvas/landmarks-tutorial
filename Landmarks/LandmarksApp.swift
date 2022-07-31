//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Ethan Silvas on 7/27/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData: ModelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
