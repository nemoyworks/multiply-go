//
//  SettingsView.swift
//  MultiplyGO
//
//  Created by Ростислав Гайда on 26.06.2026.
//

import SwiftUI

struct SettingsView: View {
    @State private var sound = true
    @State private var haptics = true
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.appPrimary
                    .ignoresSafeArea()
                VStack {
                    
                    VStack {
                        Text("SETTINGS")
                            .font(.primary(40))
                    }
                    Spacer()
                    VStack {
                        Toggle("Sound", isOn: $sound)
                            .font(.primary(18))
                        Toggle("Haptics", isOn: $haptics)
                            .font(.primary(18))
                    }
                    Spacer()
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            
                        } label: {
                            Image("ReturnButton")
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}
