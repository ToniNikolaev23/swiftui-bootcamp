//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 27.09.23.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isStartingState.toggle()
            }
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: 200, height: 100)
            
//            if isStartingState {
//                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                    .fill(Color.red)
//                    .frame(width: 200, height: 100)
//            } else {
//                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                    .fill(Color.blue)
//                    .frame(width: 200, height: 100)
//            }
            
            
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
