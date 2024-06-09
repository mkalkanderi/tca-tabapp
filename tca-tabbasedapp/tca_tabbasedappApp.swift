//
//  tca_tabbasedappApp.swift
//  tca-tabbasedapp
//
//  Created by Developer on 08/06/2024.
//

import SwiftUI
import ComposableArchitecture

@main
struct tca_tabbasedappApp: App {
    var body: some Scene {
        WindowGroup {
            RootView(store: Store(initialState: RootDomain.State(), reducer: {
                RootDomain()
            }))
        }
    }
}
