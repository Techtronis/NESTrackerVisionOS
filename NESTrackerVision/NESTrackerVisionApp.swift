//
//  NESTrackerVisionApp.swift
//  NESTrackerVision
//
//  Created by Alexis Jost on 04.02.2024.
//

import SwiftUI

@main
struct NESTrackerVisionApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(cons: ConsoleList.consoles)
        }
    }
}
