//
//  NewPasswordView.swift
//  SwiftUICoordinatorBootcamp
//
//  Created by C8V7P2 on 15/10/24.
//

import SwiftUI

struct Login:View {
    @EnvironmentObject var coordinator:Coordinator
    
    var body: some View {
        VStack {
            Spacer()
            Text("Login")
            
            Button("Forgot password") {
                
            }
            
            Spacer()
            
            Button("Go to Home") {
                coordinator.dismissFullCover()
            }
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
        }
        
    }
}
