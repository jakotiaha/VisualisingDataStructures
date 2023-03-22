//
//  Queue.swift
//  VisualisingDataStructures
//
//  Created by Akshat Jakotiah on 15/03/2023.
//

import Foundation

class Queue: ObservableObject {
    @Published var detail: String
    var array: [Int]
    var length: Int
    var head: Int
    var tail: Int
    
    init(length: Int){
        self.detail = ""
        self.array = Array(repeating: 0, count: length)
        self.length = length
        self.head = 0
        self.tail = -1
    }
    
    func push(item: Int){
        if self.tail < self.length - 1{
            self.tail += 1
            self.array[self.tail] = item
            self.detail = "Pushed: \(String(array[tail]))"
        }
        else{
            self.detail = "Queue Is Full"
        }
    }
    
    func pop(){
        if self.head >= self.length {
            self.detail = "Cannot pop"
        }
        else if self.tail > -1 && self.tail >= self.head{
            self.detail = "Popped: \(self.array[self.head])"
            self.head += 1
        }
        else{
            self.detail = "Queue Is Empty"
        }
    }
    
    
}
