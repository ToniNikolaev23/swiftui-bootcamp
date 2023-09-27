//
//  ButtonsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 27.09.23.
//

import SwiftUI

struct ButtonsBootcamp: View {
    @State var title: String = "This is my title"
    var body: some View {
        VStack {
            Text(title)
            Button("Click me") {
                self.title = "Button is pressed"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "Button two"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    )
            })
            
            Button(action: {
                self.title = "Button three"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    )
            })
            
            Button(action: {
                self.title = "Test"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(Color.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            })
        }
        
    }
}

#Preview {
    ButtonsBootcamp()
}
