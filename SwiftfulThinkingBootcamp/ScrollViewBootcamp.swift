//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 27.09.23.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack {
                            ForEach(0..<100) { index in
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                                
                            }
                           
                        }
                    })

                }
            }
        }
        
    }
}

#Preview {
    ScrollViewBootcamp()
}
