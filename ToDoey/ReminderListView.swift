//
//  ReminderListView.swift
//  ToDoey
//
//  Created by AlecNipp on 10/27/22.
//

import SwiftUI

struct ReminderListView: View {
    @State var reminderList: ReminderList = ReminderList.example
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5) {
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
        .toolbar {
            ToolbarItemGroup(placement: .bottomBar) {
                Button {
                    // pressed
                } label: {
                    HStack(spacing: 7) {
                        Image(systemName: "plus.circle.fill")
                        Text("New Reminder")
                            .bold()
                    }
                    
                }
                Spacer()
            }
        }
        
    }
}

struct ReminderListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ReminderListView()
        }
    }
}
