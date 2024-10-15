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
            
            Button("Authenticate") {
                coordinator.present(.login)
            }
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Setting") {
                    coordinator.present(.settings)
                }
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                Button("Privacy") {
                    coordinator.present(.privacy)
                }
            }
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
//       .toolbarTitleMenu {
//            VStack {
//                NavigationLink(destination: Text("Screen 1")) {
//                    Text("Screen 1")
//                }
//                
//                NavigationLink(destination: Text("Screen 1")) {
//                    Text("Screen 1")
//                }
//            }
    }
}


#Preview {
    HomeView().environmentObject(Coordinator())
}
