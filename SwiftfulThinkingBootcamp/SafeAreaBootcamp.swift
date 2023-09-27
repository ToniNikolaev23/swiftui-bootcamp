//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 27.09.23.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        

            ScrollView {
                VStack {
                    Text("Title goes here")
                        .font(.largeTitle)
                        .frame(width: .infinity, alignment: .leading)
                    
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                        
                    }
                }
            }
            .background(
                Color.red
                    .ignoresSafeArea()
            )
            
        
        
//        ZStack {
//            Color.blue
//                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    
//                Spacer()
//            }
//            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
//        }
      
            
        
    }
}

#Preview {
    SafeAreaBootcamp()
}
