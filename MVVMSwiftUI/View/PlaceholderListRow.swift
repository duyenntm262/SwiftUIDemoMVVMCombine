//
//  PlaceholderListRow.swift
//  MVVMSwiftUI
//
//  Created by Din Din on 22/04/2024.
//

import SwiftUI

struct PlaceholderListRow: View {
    
    let item: PlaceholderResponseModelElement
    
    var body: some View {
        HStack {
            VStack {
                Text(item.title)
                    .font(.title)
                    .foregroundColor(.red)
                Spacer()
                Text(item.body)
            }
        }
    }
}

struct PlaceholderListRow_Previews: PreviewProvider {
    static var previews: some View {
        PlaceholderListRow(item: PlaceholderResponseModelElement(userID: 1, id: 1, title: "dummy text", body: "dummy body"))
    }
}
