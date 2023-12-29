//
//  DataService.swift
//  AppIntentDemo
//
//  Created by Aigars Sukurs on 29/12/2023.
//

import Foundation
import SwiftUI

struct DataService {
    @AppStorage("pushed", store: UserDefaults(suiteName: "group.lv.130db.demo.AppIntent")) private var pushed = 0
    
    func push() {
        if (pushed == 10) {
            pushed = 1
        } else {
            pushed += 1
        }
    }
    
    func progress() -> Int {
        return pushed
    }
}
