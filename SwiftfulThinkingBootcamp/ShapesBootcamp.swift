//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 26.09.23.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
//        Capsule(style: .circular)
//        Ellipse()
//        Circle()
//            .fill(Color.blue)
//            .foregroundColor(.pink)
//            .stroke()
//            .stroke(Color.red)
//            .stroke(Color.red,lineWidth: 30)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
//            .trim(from: 0.2, to: 1)
//            .stroke(Color.purple,lineWidth: 50)
            .frame(width: 300, height: 200)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
