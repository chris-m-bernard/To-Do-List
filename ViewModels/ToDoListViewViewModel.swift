//
//  ToDoListViewViewModel.swift
//  To Do List
//
//  Created by Christopher Bernard on 8/29/24.
//

import Foundation
import FirebaseFirestore
//ViewModel for list of items view
//primary tab
class ToDoListViewViewModel: ObservableObject{
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    //Delete to do list item
    //Parameter id: item id to delete
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
