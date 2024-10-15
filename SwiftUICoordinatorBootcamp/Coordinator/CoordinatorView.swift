//
//  CoordinatorView.swift
//  SwiftUICoordinatorBootcamp
//
//  Created by C8V7P2 on 15/10/24.
//

import SwiftUI

struct CoordinatorView:View {
    @StateObject private var coordinator:Coordinator
    
    init(coordinator: Coordinator) {
        self._coordinator = StateObject(wrappedValue: coordinator)
    }
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.buildpage(page: .home)
                .navigationDestination(for: Pages.self) { page in
                    coordinator.buildpage(page: page)
                }
                .sheet(item: $coordinator.sheet) { sheet in
                    coordinator.buildSheet(sheet: sheet)
                }
            
                .fullScreenCover(item: $coordinator.fullCover, content: { fullCover in
                    coordinator.buildFullCover(fullCover: fullCover)
                })
        }
        .environmentObject(coordinator)
    }
}
