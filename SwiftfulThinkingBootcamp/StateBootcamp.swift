//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 27.09.23.
//

import SwiftUI

struct StateBootcamp: View {
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
            
            VStack(spacing: 20, content: {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20, content: {
                    Button("Button 1") {
                        backgroundColor = Color.blue
                        myTitle = "Button one was pressed"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = Color.purple
                        myTitle = "Button two was pressed"
                    }
                })
            })
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
