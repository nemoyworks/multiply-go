//
//  ContentView.swift
//  MultiplyGO
//
//  Created by Ростислав Гайда on 25.06.2026.
//

import SwiftUI
import SwiftData

struct MainMenuView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.primaryColor
                    .ignoresSafeArea()
                
                VStack {
                    
                    VStack {
                        Image("AppLogo")
                            .resizable()
                            .scaledToFit()
                    }
                    
                    VStack {
                        Button {

                        } label: {
                            MenuButton(text: "PLAY")
                        }
                        
                        Button {
                            
                        } label: {
                            MenuButton(text: "PRACTICE")
                        }
                        
                        Button {
                            
                        } label: {
                            MenuButton(text: "PROGRESS")
                        }
                        
                        Button {
                            
                        } label: {
                            MenuButton(text: "SETTINGS")
                        }
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    MainMenuView()
}
