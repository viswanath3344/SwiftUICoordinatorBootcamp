//
//  Sheet.swift
//  SwiftUICoordinatorBootcamp
//
//  Created by C8V7P2 on 15/10/24.
//

enum Sheet: String, Identifiable  {
    var id: String { self.rawValue }
    case settings
    case privacy
}
