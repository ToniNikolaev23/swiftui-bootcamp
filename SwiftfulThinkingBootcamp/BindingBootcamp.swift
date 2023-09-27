//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 27.09.23.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
            
        }
    }
}

#Preview {
    BindingBootcamp()
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.red
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.blue
            title = "NEW TITLE"
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}
