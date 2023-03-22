//
//  ContentView.swift
//  VisualisingDataStructures
//
//  Created by Akshat Jakotiah on 15/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Text("Visualising Data Structures")
                .font(.title)
                .bold()
                .padding()
                .frame(alignment: .top)
            NavigationStack{
                NavigationLink("Stack", destination: StackView())
            
                NavigationLink("Queue", destination: QueueView())
            
                NavigationLink("Linked List", destination: LinkedListView(linkedList: LinkedList()))
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
