//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Aditi Agarwal on 4/27/25.
//

import SwiftUI
import SwiftData

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
