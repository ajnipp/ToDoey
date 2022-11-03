//
//  ReminderListView.swift
//  ToDoey
//
//  Created by AlecNipp on 10/27/22.
//

import SwiftUI

struct ReminderListView: View {
    @Binding var reminderList: ReminderList
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Text(reminderList.name)
                Spacer()
                Text("\(reminderList.reminders.count)")
            }
            .font(.system(.largeTitle, design: .rounded))
            .bold()
            .foregroundColor(reminderList.color)
            .padding(.horizontal)
            List {
                ForEach($reminderList.reminders) { $reminder in
                    ReminderRowView(reminder: $reminder, color: reminderList.color)
                }
                .onDelete(perform: delete)
            }
            .listStyle(.inset)
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItemGroup(placement: .bottomBar) {
                Button {
                    reminderList.reminders.append(Reminder(name: ""))
                } label: {
                    HStack(spacing: 7) {
                        Image(systemName: "plus.circle.fill")
                        Text("New Reminder")
                            
                    }
                    .font(.system(.body, design: .rounded))
                    .bold()
                    .foregroundColor(reminderList.color)
                    
                }
                Spacer()
            }
        }
        
    }
    
    func delete(at offsets: IndexSet) {
        reminderList.reminders.remove(atOffsets: offsets)
    }
}

struct ReminderListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ReminderListView(reminderList: .constant(ReminderList.example))
        }
    }
}
