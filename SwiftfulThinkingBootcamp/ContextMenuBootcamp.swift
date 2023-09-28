//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 28.09.23.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    @State var backgroundColor: Color = Color.purple
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swift")
                .font(.headline)
            Text("How to use ContextMenu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = Color.yellow
            }, label: {
                Label("Button 1", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = Color.blue
            }, label: {
                Text("Button 2")
            })
            
            Button(action: {
                backgroundColor = Color.red
            }, label: {
                HStack {
                    Text("Button 3")
                    Image(systemName: "heart.fill")
                }
            })
        })
    }
}

#Preview {
    ContextMenuBootcamp()
}
