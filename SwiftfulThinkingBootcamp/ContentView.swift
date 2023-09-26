//
//  ContentView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 26.09.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello again")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.green)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
