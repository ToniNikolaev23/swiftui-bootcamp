//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 28.09.23.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("BUTTON") {
                    withAnimation(.spring()){
                        showNewScreen.toggle()
                    }
                }
                .font(.largeTitle)
                Spacer()
            }
            //METHOD 1 - Sheet
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            //METHOD 2 - TRANSITION
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        
//                }
//            }
//            .zIndex(2.0)
            //METHOD 3 - ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
            
            
        }
    }
}

struct NewScreen: View {
    @Environment(\.dismiss) var dismissScreen
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
//                dismissScreen()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

#Preview {
    PopoverBootcamp()
}
