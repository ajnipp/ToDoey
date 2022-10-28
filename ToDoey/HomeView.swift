//
//  HomeView.swift
//  ToDoey
//
//  Created by AlecNipp on 10/27/22.
//

import SwiftUI

struct HomeView: View {
    @State var reminderLists = [ReminderList]()
    var body: some View {
        NavigationStack {
            List {
                ForEach(reminderLists){ reminders in
                    NavigationLink {
                        ReminderListView(reminderList: reminders)
                        
                    } label: {
                        ReminderListListRowView(reminderList: reminders)
                    }
                    .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                    
                }
            }
            .navigationTitle("Reminders")
        }
        
        .onAppear {
            reminderLists.append(ReminderList.example)
            reminderLists.append(ReminderList.example)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
