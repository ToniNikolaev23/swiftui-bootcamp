//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 28.09.23.
//

import SwiftUI

struct SheetsBootcamp: View {
    @State var showSheet: Bool = false
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
        }
        .fullScreenCover(isPresented: $showSheet, content: {
            SecondScreen()
        })
//        .sheet(isPresented: $showSheet, content: {
//            SecondScreen()
//        })
    }
}

struct SecondScreen: View {
    @Environment(\.dismiss) var dismissScreen
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                dismissScreen()
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
    SheetsBootcamp()
//    SecondScreen()
}
