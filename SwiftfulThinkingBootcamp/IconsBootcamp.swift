//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 26.09.23.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "pin.slash")
            .renderingMode(.original)
//            .font(.title)
//            .font(.system(size:200))
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFill()
//            .scaledToFit()
//            .foregroundColor(.red)
            .frame(width: 300, height: 300)
//            .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
