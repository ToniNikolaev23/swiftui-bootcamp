//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 27.09.23.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Test", "Hello", "AnotherTest"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
            ForEach(data.indices, id: \.self) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
