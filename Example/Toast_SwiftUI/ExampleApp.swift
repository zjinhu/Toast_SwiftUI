//
//  Toast_SwiftUIApp.swift
//  Toast_SwiftUI
//
//  Created by iOS on 2023/5/12.
//

import SwiftUI
import Toast_SwiftUI
@main
struct ExampleApp: App {
    @StateObject var ob = ToastManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ob)
        }
    }
}
