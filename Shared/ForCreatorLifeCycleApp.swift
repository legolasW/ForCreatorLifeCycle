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
                print("前台活跃 Foreground Active")
            case .inactive:
                print("前台不活跃 Foreground Inactive")
            case .background:
                print("后台 Background")
            @unknown default:
                print("Error ")
            }
        }
    }
}



