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
                    Text("SETTINGS")
                        .padding(30)
                        .font(.primary(30))
                    
                    VStack(spacing: 15) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 400, height: 70)
                                .foregroundColor(Color.white)
                            
                            Toggle("SOUND", systemImage: "speaker.wave.3", isOn: $sound)
                                .frame(maxWidth: 380)
                                .font(.primary(20))
                        }
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 400, height: 70)
                                .foregroundColor(Color.white)
                            
                            Toggle("MUSIC", systemImage: "music.note", isOn: $sound)
                                .frame(maxWidth: 380)
                                .font(.primary(20))
                        }
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 400, height: 70)
                                .foregroundColor(Color.white)
                            
                            Toggle("HAPTICS", systemImage: "hand.tap", isOn: $sound)
                                .frame(maxWidth: 380)
                                .font(.primary(20))
                        }
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 400, height: 70)
                                .foregroundColor(Color.white)
                            
                            Toggle("NOTIFICATIONS", systemImage: "bell", isOn: $sound)
                                .frame(maxWidth: 380)
                                .font(.primary(20))
                        }
                        Spacer()
                    }
                }
                .frame(maxWidth: 420, maxHeight: 650)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(Color.toggleColor)
                )
            }
        }
    }
}

#Preview {
    SettingsView()
}
