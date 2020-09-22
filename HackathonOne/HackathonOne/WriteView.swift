//
//  WriteView.swift
//  HackathonOne
//
//  Created by Eileen Xia on 9/18/20.
//  Copyright © 2020 Anonymous. All rights reserved.
//

import SwiftUI

struct Item: Hashable {
    let name: String
}

var listItems = [Item]()

struct WriteView: View {
    @State var post: String = ""
    @State var goToReadView = false
    @State var addItem = false
    
        
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading) {
                NavigationLink(destination: ReadView(), isActive: $goToReadView) { EmptyView() }
                
                TextField("Write an anonymous post...", text: self.$post)
                Text("You wrote: \(post)")
                Button(action: {
                    self.goToReadView = true
                    listItems.append(Item(name:self.post))

                    self.addItem.toggle()
//                    print(listItems)
                    self.post = ""
                }) {
                    Text("Submit")
                        .foregroundColor(Color(red: 0.3, green: 0.2, blue: 0.8, opacity: 1.0))
                }
            }.padding()
        }
    }
}

struct WriteView_Previews: PreviewProvider {
    static var previews: some View {
        WriteView()
    }
}
