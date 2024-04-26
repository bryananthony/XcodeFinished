//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by MacBook Pro on 26/04/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import SwiftUI
import UserNotifications


struct ContentView: View {
    var body: some View {
        LandmarkList()
            .task {
                let center = UNUserNotificationCenter.current()
                _ = try? await center.requestAuthorization(
                    options: [.alert, .sound, .badge]
                )
            }
    }
}


#Preview {
    ContentView()
        .environment(ModelData())
}
