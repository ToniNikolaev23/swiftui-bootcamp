//
//  ExtractSubviewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 27.09.23.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    let bgColor: UIColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    var body: some View {
        ZStack {
            Color(bgColor).ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apple", count: 20, color: .green)
            MyItem(title: "Hello", count: 15, color: .white)
        }
    }
   
}

#Preview {
    ExtractSubviewsBootcamp()
}

struct MyItem: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
