//
//  HomeView.swift
//  SwiftUICoordinatorBootcamp
//
//  Created by C8V7P2 on 15/10/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        VStack {
            Spacer()
            Text("Home!")
         
            Spacer()
            
            Button("Authenticate") {
                coordinator.present(.login)
            }
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
        }
        .toolbar {
            Button("Setting") {
                coordinator.present(.settings)
            }
            
            Spacer()
            
            Button("Privacy") {
                coordinator.present(.privacy)
            }
        }
    }
}
