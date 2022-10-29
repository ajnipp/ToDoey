//
//  HomeView.swift
//  ToDoey
//
//  Created by AlecNipp on 10/27/22.
//

import SwiftUI

struct HomeView: View {
    @State var reminderLists = ReminderList.exampleLists
    var body: some View {
        NavigationStack {
            List {
                ForEach(reminderLists){ reminders in
                    NavigationLink {
                        ReminderListView(reminderList: reminders)
                        
                    } label: {
                        ReminderListListRowView(reminderList: reminders)
                    }
                    .listRowInsets(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 15))
                    
                }
            }
            .navigationTitle("Reminders")
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
