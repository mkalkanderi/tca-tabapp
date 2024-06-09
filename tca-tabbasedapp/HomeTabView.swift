//
//  HomeTab.swift
//  tca-tabbasedapp
//
//  Created by Developer on 09/06/2024.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct HomeTabFeature {
    
    @ObservableState
    struct State {}
    
    enum Action {}
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
                    
            }
        }
    }
}

struct HomeTabView: View {
    
    let store: StoreOf<HomeTabFeature>
    
    var body: some View {
        Text("Hello, Home!")
    }
}

#Preview {
    HomeTabView(store: Store(initialState: HomeTabFeature.State(), reducer: {
        HomeTabFeature()
    }))
}
