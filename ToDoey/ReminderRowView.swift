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
                if reminder.isComplete {
                    filledReminderLabel
                } else {
                    emptyReminderLabel
                }
            }
            .buttonStyle(.plain)
            Text(reminder.name)
        }
    }
    
    
    var filledReminderLabel: some View {
        Image(systemName: "circle")
            .bold()
            .foregroundColor(color)
            .overlay(alignment: .center) {
                GeometryReader { geo in
                    VStack {
                        Circle() // sized based on first
                            .fill(color)
                            .frame(width: geo.size.width*0.55, height: geo.size.height*0.55, alignment: .center)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    
                }
                
                
            }
    }
    
    var emptyReminderLabel: some View {
        Image(systemName: "circle")
            .foregroundColor(.secondary)

    }
}

struct ReminderRowView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderRowView(reminder: Reminder.example, color: Color.blue)
    }
}
