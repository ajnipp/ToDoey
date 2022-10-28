//
//  ReminderRowView.swift
//  ToDoey
//
//  Created by AlecNipp on 10/27/22.
//

import SwiftUI

struct ReminderRowView: View {
    @State var reminder: Reminder
    let color: Color
    var body: some View {
        HStack {
            Button {
                reminder.isComplete.toggle()
            } label: {
                Image(systemName: reminder.isComplete ? "circle.fill" : "circle")
                    .foregroundColor(color)
            }
            Text(reminder.name)
        }
    }
}

struct ReminderRowView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderRowView(reminder: Reminder.example, color: Color.blue)
    }
}
