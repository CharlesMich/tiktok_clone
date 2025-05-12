//
//  MainTabView.swift
//  ticktock_clone
//
//  Created by Charles Michael on 5/11/25.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView (selection: $selectedTab){
            Text("Feed")
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                            .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                        Text("Home")
                    }
            }
            Text("Friends")
                .tabItem {
                    VStack {
                        Image(systemName: "person.2")
                        Text("Friends")
                    }
            }
            Text("Upload Post")
                .tabItem {
                    VStack {
                        Image(systemName: "plus")
                        Text("Inbox")
                    }
            }
            Text("Profile")
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Profile")
                    }
            }
        }
    }
}

#Preview {
    MainTabView()
}
