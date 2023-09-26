//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 26.09.23.
//

import SwiftUI

struct GradientsBootcamp: View {
    var colorOne = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    var colorTwo = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    var body: some View {
   
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.red
//                LinearGradient(
//                    gradient: Gradient(colors: [Color(colorOne), Color(colorTwo)]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom
//                )
//                RadialGradient(
//                    gradient: Gradient(colors: [Color(colorOne), Color(colorTwo)]),
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 400)
                
                AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, angle: .degrees(45))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
