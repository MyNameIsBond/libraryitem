//
//  ChatRow.swift
//  LibraryItem
//
//  Created by Tony Hajdini on 30/09/2020.
//

import SwiftUI


struct ViewLibrary: LibraryContentProvider {
    @LibraryContentBuilder
    var views: [LibraryItem] {
        LibraryItem(
            ChatRow(photo: "user1", name: "James", message: "Hello", time: "20w:20"),
            title: "Chat Row",
            category: .control
        )
    }
}

struct ChatRow: View {
    
    var photo: String
    var name: String
    var message: String
    var time: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(photo).imgAvatar(width: 50, height: 50)
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.headline)
                    Text(message)
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                        .lineLimit(1)
                }
                Spacer()
                Text(time)
                    .font(.caption)
                    .foregroundColor(Color.gray)
                
            }
        }.padding(.horizontal, 10)
    }
}

struct ChatRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ChatRow(photo: "user1", name: "James", message: "Hello", time: "20:20")
        }
    }
}
