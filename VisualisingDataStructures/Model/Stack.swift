//
//  Stack.swift
//  VisualisingDataStructures
//
//  Created by Akshat Jakotiah on 15/03/2023.
//

import Foundation

class Stack: ObservableObject {
    @Published var detail: String
    var array: [Int]
    var length: Int
    var tail: Int
    
    init(length: Int){
        self.detail = ""
        self.array = Array(repeating: 0, count: length)
        self.length = length
        self.tail = -1
    }
    
    
    func push(item: Int){
        if self.tail < 10{
            self.tail += 1
            array.insert(item, at: self.tail)
            self.detail = "Pushed \(String(array[tail]))"
            
        }else{
            self.detail = "Stack is full."
        }
        
    }
    
    func pop(){
        if self.tail > -1{
            self.detail = "Popped \(String(array[tail]))"
            self.tail -= 1
        }else{
            self.detail = "Stack is empty."
        }
    }
    
    
    
}
