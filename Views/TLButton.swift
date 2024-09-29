//
//  TLButton.swift
//  To Do List
//
//  Created by Christopher Bernard on 9/1/24.
//

import SwiftUI

struct TLButton: View {
    let title:String
    let background: Color
    let action: () -> Void
    var body: some View {
        Button{
            action()
        } label:{
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(title:"Title",background:Color.pink){
        //Action
    }
}
