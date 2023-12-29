//
//  AppIntentDemo.swift
//  AppIntentDemo
//
//  Created by Aigars Sukurs on 29/12/2023.
//

import AppIntents

struct PushTheRing: AppIntent {
    static var title: LocalizedStringResource = "Push the Ring"
    
    @MainActor
    func perform() async throws -> some IntentResult {
        DataService().push()
        return .result()
    }
}
