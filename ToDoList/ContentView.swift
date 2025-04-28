//
//  ContentView.swift
//  ToDoList
//
//  Created by Aditi Agarwal on 4/27/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Text("TO DO LIST")
                    .font(.system(size: 30))
                         .fontWeight(.black)
                Spacer()
                Button {

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
    }
}

#Preview {
    ContentView()
}
