//
//  ContentView.swift
//  ToDoList
//
//  Created by Aditi Agarwal on 4/27/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    var body: some View {
        VStack {
            HStack{
                Text("TO DO LIST")
                    .font(.system(size: 30))
                         .fontWeight(.black)
                Spacer()
                Button {
                    withAnimation{
                        showNewTask = true
                    }
                } label: {
                    Text("+")
                        .font(.title)
                            .fontWeight(.bold)
                }
            }
            .padding()
            List {
                    ForEach (toDos) { toDoItem in
                        if toDoItem.isImportant {
                            Text("‼️" + toDoItem.title)
                        } else {
                            Text(toDoItem.title)
                        }
                    }
            }
            .listStyle(.plain)
            Spacer()
        }
        .padding()
        if showNewTask {
            NewToDoView(showNewTask: $showNewTask, toDoItem: ToDoItem(title: "", isImportant: false))
        }
        
    }
}

#Preview {
    ContentView()
}
