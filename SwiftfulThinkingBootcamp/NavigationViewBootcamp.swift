//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 28.09.23.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello, world", destination: MyOtherScreen())
                
                Text("Hello")
                Text("Hello")
                Text("Hello")
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                trailing: NavigationLink(
                destination: MyOtherScreen(),
                label: {
                    Image(systemName: "gear")
                }
            )
                .accentColor(.red)
            )
          
           
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.dismiss) var dismissScreen
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .navigationTitle("Green Screen")
//                .navigationBarHidden(true)
            
            VStack {
                Button("Back Button") {
                    dismissScreen()
                }
                
                NavigationLink("Click Here", destination: Text("3rd Screen"))
            }
            
            
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
