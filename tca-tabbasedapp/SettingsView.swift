//
//  SettingsView.swift
//  tca-tabbasedapp
//
//  Created by Developer on 09/06/2024.
//

import SwiftUI
import ComposableArchitecture


//MARK: - Feature reducer
@Reducer
struct SettingsFeature {
    @ObservableState
    struct State {}
    struct Action {}
}

//MARK: - View
struct SettingsView: View {
    
    let store: StoreOf<SettingsFeature>
    
    //MARK: - body
    var body: some View {
        Text("Hello, Settings!")
    }
}

//MARK: - Preview
#Preview {
    SettingsView(store: Store(initialState: SettingsFeature.State(), reducer: {
        SettingsFeature()
    }))
}
