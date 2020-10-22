//
//  ForCreatorLifeCycleApp.swift
//  Shared
//
//  Created by Legolas on 10/21/20.
//

import SwiftUI

@main
struct ForCreatorLifeCycleApp: App {
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase) { newPhase in
            switch newPhase {
            case .active:
                print("Foreground Active")
            case .inactive:
                print("Foreground Inactive")
            case .background:
                print("Background")
            @unknown default:
                print("Error ")
            }
        }
    }
}



