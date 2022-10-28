//
//  Reminder.swift
//  ToDoey
//
//  Created by AlecNipp on 10/27/22.
//

import Foundation

struct Reminder: Identifiable {
    let id = UUID()
    var name: String
    var isComplete = false
    
}

extension Reminder {
    static var example: Reminder {
        Reminder(name: "Example reminder")
    }
}
