//
//  ConditionalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 27.09.23.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack {
            
            Button("Is Loading") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
//            Button("Circle Button: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//            
//            Button("Rectangle Button: \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//            
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//            
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            } 
//            if showCircle && showRectangle {
//                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                    .frame(width: 200, height: 200)
//            }
//            
//            Spacer()
           
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
