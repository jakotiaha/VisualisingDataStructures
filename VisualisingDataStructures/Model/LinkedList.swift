//
//  LinkedList.swift
//  VisualisingDataStructures
//
//  Created by Akshat Jakotiah on 15/03/2023.
//

import Foundation


class LinkedList: ObservableObject{
    @Published var head: Item?
    @Published var detail: String
    
    init(){
        self.head = nil
        self.detail = ""
    }
    
    func traverse() -> [String]{
        var list1 = [String]()
        var currentItem = head
        while currentItem != nil {
            list1.append(currentItem!.data)
            currentItem = currentItem?.next
        }
        return list1
    }
    
    func addNode(data: String){
        if self.head == nil{
            self.head = Item(data: data)
        } else{
            var currentItem = self.head
            while currentItem?.next != nil{
                currentItem = currentItem?.next
            }
            let newItem = Item(data: data)
            currentItem?.next = newItem
        }
        self.detail = "\(data) was added to the list"
    }
    func removeNode(data: String) {
        if head?.data == data {
            head = head?.next
            self.detail = "\(data) was removed from the list"
        } else {
            var currentItem = head
            var previousItem: Item?
            while currentItem != nil && currentItem?.data != data {
                previousItem = currentItem
                currentItem = currentItem?.next
                self.detail = "Removed \(data) from list"
            }
            if currentItem == nil{
                self.detail = "No occurence of: \(data)"
            }
            else{
                self.detail = "Removed \(data) from list"
            }
            previousItem?.next = currentItem?.next
        }
        
    }
}

class Item{
    var next: Item?
    let data: String
    
    
    init(data: String){
        self.next = nil
        self.data = data
        
    }
    
}

