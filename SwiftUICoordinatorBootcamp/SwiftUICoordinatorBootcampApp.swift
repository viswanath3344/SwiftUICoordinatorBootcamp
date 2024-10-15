//
//  SwiftUICoordinatorBootcampApp.swift
//  SwiftUICoordinatorBootcamp
//
//  Created by C8V7P2 on 15/10/24.
//

import SwiftUI

@main
struct SwiftUICoordinatorBootcampApp: App {
    var body: some Scene {
        WindowGroup {
            CoordinatorView(coordinator: Coordinator())
        }
    }
}
