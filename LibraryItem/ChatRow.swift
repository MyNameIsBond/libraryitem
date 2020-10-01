//
//  ChatRow.swift
//  LibraryItem
//
//  Created by Tony Hajdini on 30/09/2020.
//

import SwiftUI

struct ChatRow: View {
    let user: Messages
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(user.photo).imgAvatar(width: 50, height: 50)
                VStack(alignment: .leading) {
                    Text(user.name)
                        .font(.headline)
                    Text(user.message)
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                        .lineLimit(1)
                }
                Spacer()
                Text(user.time)
                    .font(.caption)
                    .foregroundColor(Color.gray)
                
            }
        }.padding(.horizontal, 10)
    }
}

struct ChatRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ChatRow(user: Messages(name: "James", photo: "user1", message: "Hello", time: "20:20"))
        }
    }
}
