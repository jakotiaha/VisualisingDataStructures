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
            List{
                NavigationStack{
                    NavigationLink("Stack", destination: StackView())
                }
                    
                NavigationStack{
                    NavigationLink("Queue", destination: QueueView())
                }
                NavigationStack{
                    NavigationLink("Linked List", destination: LinkedListView())
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
