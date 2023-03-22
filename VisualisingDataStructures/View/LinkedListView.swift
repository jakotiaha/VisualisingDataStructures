//
//  LinkedListView.swift
//  VisualisingDataStructures
//
//  Created by Akshat Jakotiah on 15/03/2023.
//

import SwiftUI

struct LinkedListView: View {
    @State private var addingNumber: String = ""
    @State private var removingNumber: String = ""
    @StateObject var linkedList: LinkedList
    
    var body: some View {
        VStack{
            Text("Linked List")
                .font(.title)
                .bold()
                .padding()
                .frame(alignment: .top)
            
            ForEach(linkedList.traverse().indices, id: \.self) { index in
                    Text(linkedList.traverse()[index])
                    if linkedList.traverse().count-2 >= index{
                        Spacer()
                        Text("Points at:")
                    }

            }
            Text("")
            HStack{
                TextField("Enter a number to add", text: $addingNumber)
                Spacer()
                Button(action: {
                    if addingNumber != ""{
                        linkedList.addNode(data: addingNumber)} }) {
                        Text("Add to List")
                    }
            }
            HStack{
                TextField("Enter a number to remove", text: $removingNumber)
                Spacer()
                Button(action: {
                    if removingNumber != ""{
                        linkedList.removeNode(data: removingNumber)} }) {
                        Text("Remove")
                    }
            }
            Text(linkedList.detail)
        }
    }
}

struct LinkedListView_Previews: PreviewProvider {
    static var previews: some View {
        LinkedListView(linkedList: LinkedList())
    }
}
