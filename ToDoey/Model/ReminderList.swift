//
//  ReminderList.swift
//  ToDoey
//
//  Created by AlecNipp on 10/27/22.
//

import Foundation
import SwiftUI
struct ReminderList: Identifiable {
    let id = UUID()
    var name: String
    var reminders = [Reminder]()
    var color = Color.blue
    var iconName = "list.bullet.circle.fill"
}

extension ReminderList {
    static var example: ReminderList {
        ReminderList(name: "Example list", reminders: [Reminder.example])
    }
}
