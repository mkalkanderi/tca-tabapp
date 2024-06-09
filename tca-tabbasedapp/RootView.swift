//
//  ContentView.swift
//  tca-tabbasedapp
//
//  Created by Developer on 08/06/2024.
//

import SwiftUI
import ComposableArchitecture

//MARK: - Feature Reducer
@Reducer
struct RootDomain {
    
    enum Tab {
        case home
        case settings
    }
    
    @ObservableState
    struct State {
        var selectedTab: Tab = .home
        var homeTab = HomeTabFeature.State()
        var settingsTab = SettingsFeature.State()
    }
    
    enum Action {
        case tabSelected(Tab)
        case home(HomeTabFeature.Action)
        case settings(SettingsFeature.Action)
    }
    
    struct Environment {
        // networking and api stuff
    }
    
    var body: some ReducerOf<Self> {
        Scope(state: \.homeTab, action: \.home) {
            HomeTabFeature()
        }
        Scope(state: \.settingsTab, action: \.settings) {
            SettingsFeature()
        }
        Reduce { state, action in
            return .none
        }
    }
}

struct RootView: View {
    
    var store: StoreOf<RootDomain>
    
    var body: some View {
        TabView {
            HomeTabView(store: store.scope(state: \.homeTab, action: \.home))
                .tabItem { Label("Home", systemImage: "house") }
            SettingsView(store: store.scope(state: \.settingsTab, action: \.settings))
                .tabItem { Label("Settings", systemImage: "gear") }
        }
    }
}

#Preview {
    RootView(store: Store(initialState: RootDomain.State(), reducer: {
        RootDomain()
    }))
}
