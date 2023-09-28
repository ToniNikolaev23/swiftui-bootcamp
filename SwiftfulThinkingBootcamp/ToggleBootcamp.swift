//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 28.09.23.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var isToggle: Bool = false
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(isToggle ? "Online" : "Offline")
            }
            
            Toggle(isOn: $isToggle, label: {
                Text("Change status")
            })
            .toggleStyle(SwitchToggleStyle(tint: .red))
            
            Spacer()
        }
        .padding(.horizontal, 50)
    }
}

#Preview {
    ToggleBootcamp()
}
