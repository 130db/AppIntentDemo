//
//  AppIntentShortcuts.swift
//  AppIntentDemo
//
//  Created by Aigars Sukurs on 29/12/2023.
//

import AppIntents

struct AppIntentShortcuts: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] {
        AppShortcut(
            intent: PushTheRing(),
            phrases: ["Push the ring"]
        )
    }
}
