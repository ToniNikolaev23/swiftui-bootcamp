//
//  ListsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Toni Stoyanov on 28.09.23.
//

import SwiftUI

struct ListsBootcamp: View {
    @State var fruits: [String] = [
        "Apple", "Orange", "Banana", "Peach"
    ]
    @State var veggies: [String] = [
        "Tomato", "Potato", "Carrot"
    ]
    var body: some View {
        NavigationView {
            List {
                Section(header: 
                            HStack {
                    Text("Fruits")
                    Image(systemName: "flame.fill")
                }
                    .font(.headline)
                    .foregroundColor(.green)
                
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.vertical)
//                            .background(Color.pink)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                    
                }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                }
            }
            .accentColor(.green)
           
//            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    addButton
                }
            }
            
        }
        .tint(.red)
       
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListsBootcamp()
}
