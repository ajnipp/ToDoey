//
//  ReminderListView.swift
//  ToDoey
//
//  Created by AlecNipp on 10/27/22.
//

import SwiftUI

struct ReminderListView: View {
    var reminderList: ReminderList = ReminderList.example
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                Text(reminderList.name)
                Spacer()
                Text("\(reminderList.reminders.count)")
            }
            .font(.largeTitle)
            .bold()
            .foregroundColor(reminderList.color)
            .padding(.horizontal)
            List {
                ForEach(reminderList.reminders) { reminder in
                    ReminderRowView(reminder: reminder, color: reminderList.color)
                }
            }
            .listStyle(.inset)
        }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct ReminderListView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderListView()
    }
}
