//
//  ToDoListItemViewViewModel.swift
//  To Do List
//
//  Created by Christopher Bernard on 8/29/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
//view model for single to do list item view (each row in items list)
class ToDoListItemViewViewModel: ObservableObject{
    init() {}
    
    func toggleIsDone(item: ToDoListItem){
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        guard let uid = Auth.auth().currentUser?.uid else{
            return
        }
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
