//
//  ReminderRowView.swift
//  ToDoey
//
//  Created by AlecNipp on 10/27/22.
//

import SwiftUI

struct ReminderRowView: View {
    @Binding var reminder: Reminder
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
            .frame(width: 20, height: 20)
            .buttonStyle(.plain)
//            .border(.red)
            TextField(reminder.name, text: $reminder.name)
                .foregroundColor(reminder.isComplete ? .secondary : .primary)
        }
    }
    
    
    var filledReminderLabel: some View {
        Circle()
            .stroke(color, lineWidth: 2)
//            .bold()
            .overlay(alignment: .center) {
                GeometryReader { geo in
                    VStack {
                        Circle() // sized based on first
                            .fill(color)
                            .frame(width: geo.size.width*0.7, height: geo.size.height*0.7, alignment: .center)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    
                }
                
                
            }
    }
    
    var emptyReminderLabel: some View {
        Circle()
            .stroke(.secondary)

    }
}

struct ReminderRowView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderRowView(reminder: .constant(Reminder.example), color: Color.blue)
    }
}
