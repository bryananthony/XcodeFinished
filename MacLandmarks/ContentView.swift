//
//  ContentView.swift
//  MacLandmarks
//
//  Created by MacBook Pro on 26/04/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}


#Preview {
    ContentView()
        .environment(ModelData())
}
