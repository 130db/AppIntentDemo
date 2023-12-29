//
//  ContentView.swift
//  AppIntent
//
//  Created by Aigars Sukurs on 29/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("pushed", store: UserDefaults(suiteName: "group.lv.130db.demo.AppIntent")) var pushed = 0
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            
            VStack {
                Spacer()
                ZStack {
                    Circle()
                        .stroke(.white.opacity(0.1), lineWidth: 20)
                    
                    Circle()
                        .trim(from: 0, to: CGFloat(pushed) * 0.1)
                        .stroke(.blue, style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                        .rotationEffect(.degrees(-90))
                    
                    VStack {
                        Text("Pushed")
                            .font(.largeTitle)
                        Text(String(pushed))
                            .font(.system(size: 48))
                            .bold()
                            
                    }.foregroundColor(.white)
                }.padding(.horizontal, 50)
                
                Spacer()
                
                Button(action: {
                    if (pushed == 10) {
                        pushed = 1
                    } else {
                        pushed += 1
                    }
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 16)
                            .foregroundStyle(.blue)
                            .frame(height: 48)
                            .padding(.horizontal, 96)
                        Text("Push It")
                            .foregroundStyle(.white)
                            .bold()
                    }
                })
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
