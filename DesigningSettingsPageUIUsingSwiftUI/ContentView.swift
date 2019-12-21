//
//  ContentView.swift
//  DesigningSettingsPageUIUsingSwiftUI
//
//  Created by Ramill Ibragimov on 21.12.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Settings()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Settings: View {
    var body: some View {
        VStack(spacing: 15) {
            ZStack {
                Image("BG")
                    .resizable()
                    .frame(width: 150, height: 150)
                HStack {
                    VStack(alignment: .leading, spacing: 45, content: {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "chevron.left")
                                .font(.title)
                        }
                        Text("Settings")
                            .font(.title)
                    }).foregroundColor(Color.black.opacity(0.5))
                    Spacer()
                }.padding()
                .padding(.top, 10)
                VStack {
                    Circle()
                        .foregroundColor(.pink)
                        .frame(width: 100, height: 100)
                        .shadow(radius: 15)
                        .overlay(Text("SwiftUI")
                        .foregroundColor(.white)
                        .font(.title))
                    Spacer()
                }.padding(.top, 30)
            }.frame(height: 175)
            VStack(spacing: 15) {
                btnView(image: "person.crop.circle.badge.checkmark", name: "Account")
                btnView(image: "message.circle", name: "Notifications")
                btnView(image: "lock.rotation.open", name: "Privacy")
                btnView(image: "paintbrush", name: "Help Center")
                btnView(image: "arrow.up.arrow.down.circle", name: "General")
                btnView(image: "bandage", name: "Abouts Us")
            }.padding()
            Spacer()
        }
    }
}

struct btnView: View {
    var image = ""
    var name = ""
    
    var body: some View {
        Button(action: {
            
        }) {
            HStack(spacing: 15) {
                Image(systemName: image)
                    .font(.largeTitle)
                Text(name)
                Spacer(minLength: 15)
                Image(systemName: "chevron.right")
            }.padding()
            .foregroundColor(Color.black.opacity(0.5))
        }
    }
}
