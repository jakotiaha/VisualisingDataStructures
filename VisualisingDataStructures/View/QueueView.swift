//
//  QueueView.swift
//  VisualisingDataStructures
//
//  Created by Akshat Jakotiah on 15/03/2023.
//

import SwiftUI

struct QueueView: View {
    @StateObject var queue = Queue(length: 0)
    @State private var input: String = ""
    @State private var peeking: String = ""
    
    var body: some View {
        VStack{
            Text("Stack")
                .font(.title)
                .bold()
                .padding()
                .frame(alignment: .top)
            
            if queue.tail == -1{
                Text("Queue Is Empty")
            }
            else{
                Text("")
            }
            ForEach(queue.array.indices, id: \.self) { index in
                    Text(String(queue.array[index]))
            }
            Text("")
                TextField("Enter number to push", text: $input)
                Spacer()
                Button(action: {
                    if input != ""{
                        queue.push(item: Int(input)!)} }) {
                            Text("Push number")
                        }
           
                Button(action: { queue.pop() }) {
                    Text("Pop number")
                }

            Text(queue.detail)
        }
    }
}

struct QueueView_Previews: PreviewProvider {
    static var previews: some View {
        QueueView()
    }
}

