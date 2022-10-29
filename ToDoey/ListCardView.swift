//
//  ListCardView.swift
//  ToDoey
//
//  Created by AlecNipp on 10/29/22.
//

import SwiftUI

struct ListCardView: View {
    let reminderList: ReminderList
    @State private var linkIsActive = false
    var body: some View {
        Button {
            linkIsActive = true
        } label: {
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    listIcon
                    Spacer()
                    Text("\(reminderList.reminders.count)")
                        .font(.system(.title, design: .rounded, weight: .bold))
                        .padding(.trailing)
                    
                        
                }
                Text(reminderList.name)
                    .font(.system(.body, design: .rounded, weight: .bold))
                    .foregroundColor(.secondary)
                
                
            }
            .padding(5)
            .padding(.horizontal, 5)
            .background(Color(UIColor.tertiarySystemFill))
            .cornerRadius(10)
        }
        .overlay(
            NavigationLink(
                isActive: $linkIsActive,
                destination: { ReminderListView(reminderList: reminderList) },
                label: { EmptyView() }
            ).opacity(0)
        )
        .buttonStyle(.plain)
    }
    
    var listIcon: some View {
        ZStack {
            Circle()
                .fill(reminderList.color)
                .frame(width: 27)
            Image(systemName: reminderList.iconName)
                .font(.footnote)
                .foregroundColor(.white)
                .bold()
        }
    }
}

struct ListCardView_Previews: PreviewProvider {
    static var previews: some View {
        ListCardView(reminderList: ReminderList.example)
    }
}
