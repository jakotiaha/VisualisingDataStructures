//
//  StackView.swift
//  VisualisingDataStructures
//
//  Created by Akshat Jakotiah on 15/03/2023.
//

import SwiftUI

struct StackView: View {
   @StateObject var stack = Stack(length: 0)
   @State private var input: String = ""
   @State private var peeking: String = ""
   
   var body: some View {
       
       VStack{
           Text("Stack")
               .font(.title)
               .bold()
               .padding()
               .frame(alignment: .top)
           
           if stack.tail == -1 {
               Text("Stack Is Empty")
           }
           else{
               Text("")
           }
           ForEach(stack.array.indices, id: \.self) { index in
               Text(String(stack.array[index]))
               
           }
           Text("")
           HStack{
               TextField("Enter a number to push", text: $input)
               Spacer()
               Button(action: {
                   if input != ""{
                       stack.push(item: Int(input)!)} }) {
                           Text("Push number")
                       }
           }
           HStack{
               Button(action: { stack.pop() }) {
                   Text("Pop number")
               }
               Text(stack.detail)
           }
       }
   }
}

struct StackView_Previews: PreviewProvider {
   static var previews: some View {
       StackView()
   }
}
