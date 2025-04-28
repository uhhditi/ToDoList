//
//  ContentView.swift
//  ToDoList
//
//  Created by Aditi Agarwal on 4/27/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
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
            Spacer()
        }
        .padding()
        if showNewTask {
            NewToDoView()
        }
    }
}

#Preview {
    ContentView()
}
