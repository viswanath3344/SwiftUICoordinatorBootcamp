//
//  Coordinator.swift
//  SwiftUICoordinatorBootcamp
//
//  Created by C8V7P2 on 15/10/24.
//

import SwiftUI
import Foundation

final class Coordinator: ObservableObject {
    @Published var path = NavigationPath()
    @Published var sheet: Sheet?
    @Published var fullCover: FullCover?
    
    func push(_ page: Pages) {
        path.append(page)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func present(_ sheet: Sheet) {
        self.sheet = sheet
    }
    
    func present(_ fullCover: FullCover) {
        self.fullCover = fullCover
    }
    
    
    func dismissSheet() {
        sheet = nil
    }
    
    func dismissFullCover() {
        fullCover = nil
    }
    
    @ViewBuilder
    func buildpage(page: Pages) -> some View {
      switch page {
      case .home:
            HomeView()
        case .about:
            AboutView()
        case .contact:
            ContactView()
        }
    }
    
    @ViewBuilder
    func buildSheet(sheet: Sheet) -> some View {
        switch sheet {
        case .settings:
            SettingsView()
        case .privacy:
            PrivacyView()
        }
    }
    
    @ViewBuilder
    func buildFullCover(fullCover: FullCover) -> some View {
        switch fullCover {
        case .login:
            Login()
        }
    }
    
}
