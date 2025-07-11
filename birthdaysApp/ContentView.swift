//
//  ContentView.swift
//  birthdaysApp
//
//  Created by Scholar on 7/11/25.
//

import SwiftUI

struct ContentView: View {
        @State private var friends: [friend] = [
            friend(name: "John", birthday: .now),
            friend(name: "Samantha", birthday: Date(timeIntervalSince1970: 0)) ]
    @State private var newName = ""
    @State private var newBirthday = Date.now
            var body: some View {
                NavigationStack {
                    
                    List(friends,id: \.name) { friend in
                        HStack{
                            Text(friend.name)
                            Spacer()
                            Text(friend.birthday,
                                 format: .dateTime.month(.wide).day().year())
                        }
                    }
                    .navigationTitle("Birthdays App")
                    .safeAreaInset(edge: .bottom) {
                        VStack(alignment: .center, spacing: 20){
                            Text("New Birthday")
                                .font(.headline)
                            DatePicker(selection: $newBirthday, in: Date.distantPast...Date.now, displayedComponents: .date) {
                                TextField("Name", text: $newName)
                                    .textFieldStyle(.roundedBorder)
                            }
                            Button("Save me") {
                                let newFriend = friend(name: newName, birthday: newBirthday)
                                friends.append(newFriend)
                            }
                            .padding()
                            .background(.bar)
                        }
                    }
                }
            }
        }
   

            //not used yet
    

#Preview {
    ContentView()
}
