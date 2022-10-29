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
            VStack {
                
                List {
                    Section {
                        VStack {
                            HStack {
                                ListCardView(reminderList: ReminderList.exampleToday)
                                ListCardView(reminderList: ReminderList.exampleScheduled)
                            }
                            HStack {
                                ListCardView(reminderList: allReminders)
                                ListCardView(reminderList: ReminderList.exampleFlagged)
                            }
                        }
                    }
                    .listRowBackground(Color(UIColor.systemGroupedBackground))
                    .listRowInsets(EdgeInsets())
                    Section {
                        ForEach(reminderLists){ reminders in
                            NavigationLink {
                                ReminderListView(reminderList: reminders)
                                
                            } label: {
                                ReminderListListRowView(reminderList: reminders)
                            }
                            .listRowInsets(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 15))
                            
                        }
                    } header: {
                        Text("My Lists")
                            .font(.system(.title3, design: .rounded, weight: .bold))
                            .foregroundColor(.primary)
                    }
                }
                .navigationTitle("Reminders")
            }
        }
        
    }
    
    var allReminders: ReminderList {
        var allReminders = [Reminder]()
        for reminderList in reminderLists {
            for reminder in reminderList.reminders {
                allReminders.append(reminder)
            }
        }
        return ReminderList(name: "All", reminders: allReminders, color: .gray, iconName: "tray.fill")
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
