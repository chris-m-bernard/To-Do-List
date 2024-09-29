//
//  To_Do_ListApp.swift
//  To Do List
//
//  Created by Christopher Bernard on 8/23/24.
//

import SwiftUI
import FirebaseCore
@main
struct To_Do_ListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
