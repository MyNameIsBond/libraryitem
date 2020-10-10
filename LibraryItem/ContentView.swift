
import SwiftUI

struct LibraryContent: LibraryContentProvider {
    @LibraryContentBuilder
    func modifiers(base: Image) -> [LibraryItem] {
        LibraryItem(
            base.imgAvatar(width: 50, height: 50),
            title: "Avatar Circular Image"
        )
    }
}

extension Image {
    func imgAvatar(width: CGFloat, height: CGFloat) -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: width)
            .clipShape(Circle())
            
    }
}







struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List(messages) { user in
                ChatRow(photo: user.photo,name: user.name,message: user.message, time: user.time)
                    
            }.listStyle(PlainListStyle())
            .navigationBarTitle("Messages")
            .navigationBarItems(leading:EditButton(), trailing: Image("user").imgAvatar(width: 30, height: 30))
            
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

