//
//  ReminderListListRowView.swift
//  ToDoey
//
//  Created by AlecNipp on 10/27/22.
//

import SwiftUI

struct ReminderListListRowView: View {
    let reminderList: ReminderList
    var body: some View {
        HStack {
            Image(systemName: reminderList.iconName)
                .font(.title3)
                .foregroundColor(reminderList.color)
            Text(reminderList.name)
            Spacer()
            Text("\(reminderList.reminders.count)")
        }
    }
}

struct ReminderListListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderListListRowView(reminderList: ReminderList.example)
    }
}
