//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Hudson Aibel on 10/31/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
