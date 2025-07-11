//
//  birthdaysAppApp.swift
//  birthdaysApp
//
//  Created by Scholar on 7/11/25.
//

import SwiftUI

@main
struct birthdaysAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Friend.self)
        }
    }
}
