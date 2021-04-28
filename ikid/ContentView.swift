//
//  ContentView.swift
//  ikid
//
//  Created by Justin Lim on 4/27/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: String? = nil
    @State private var hideToolBar = false
    var body: some View {
        NavigationView {
            VStack {
                Text("Select the type of joke from the bottom!").padding()
                NavigationLink(destination: Good(), tag: "Good", selection: $selection) {
                    EmptyView()
                }.navigationTitle("iKid")
                NavigationLink(destination: Pun(), tag: "Pun", selection: $selection) {
                    EmptyView()
                }
                NavigationLink(destination: Dad(), tag: "Dad", selection: $selection) {
                    EmptyView()
                }
            }
        }.toolbar {
            ToolbarItemGroup(placement: .bottomBar) {
                Button("Good") {
                    self.selection = "Good"
                    self.hideToolBar = true
                }
                Spacer()
                Button("Pun") {
                    self.selection = "Pun"
                }
                Spacer()
                Button("Dad") {
                    self.selection = "Dad"
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Good: View {
    @State private var selection: String = "Did you hear about the claustrophobic astronaut?"
    var body: some View {
        VStack {
            Spacer()
            Text(self.selection).padding()
            Spacer()
            HStack {
                Spacer()
                Button("Next") {
                    self.selection = "He just needed a little space."
                }.padding()
            }
            Spacer()
        }
    }
}

struct Pun: View {
    @State private var selection: String = "Why was Dumbo sad?"
    var body: some View {
        VStack {
            Spacer()
            Text(self.selection).padding()
            Spacer()
            HStack {
                Spacer()
                Button("Next") {
                    self.selection = "He felt irrelephant."
                }.padding()
            }
            Spacer()
        }
    }
}

struct Dad: View {
    @State private var selection: String = "Imagine if you walked into a bar and there was a long line of people waiting to take a swing at you."
    var body: some View {
        VStack {
            Spacer()
            Text(self.selection).padding()
            Spacer()
            HStack {
                Spacer()
                Button("Next") {
                    self.selection = "That's a punch line."
                }.padding()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
